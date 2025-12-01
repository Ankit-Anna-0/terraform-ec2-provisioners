resource "aws_instance" "myec2" {
  ami                    = "ami-0d176f79571d18a8f"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-00d3599589ff33509"]

  # Make sure instance gets a public IP (important for SSH)
  associate_public_ip_address = true

  # SSH connection for remote-exec
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./terraform-key.pem")
    host        = self.public_ip
  }

  # 1) Install and start Nginx on the EC2 instance
  provisioner "remote-exec" {
    inline = [
      "sudo yum -y update",
      "sudo yum -y install nginx",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> server_ip.txt"
  }
}
