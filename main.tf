resource "aws_security_group" "allow_http" {
  name = "allow_http"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "nginx_server" {
  ami                    = "ami-019715e0d74f695be"
  instance_type          = "t3.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = [aws_security_group.allow_http.id]

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>Deployed Automatically Using Terraform</h1>" > /var/www/html/index.html
              EOF
  tags = {
    Name = "Terraform-Auto-Nginx"
  }
}