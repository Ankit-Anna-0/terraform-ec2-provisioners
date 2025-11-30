resource "aws_instance" "myec2" {
  ami                    = "ami-0d176f79571d18a8f"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-00d3599589ff33509"]

  # Runs on your local machine after instance creation
  # Saves the EC2 private IP into a local file
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> server_ip.txt"
  }

  # SSH connection details for remote-exec
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./terraform-key.pem")
    host        = self.public_ip
  }

  # Runs commands inside the EC2 instance after SSH connection
  # Installs and starts nginx
  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]
  }
}
