# open_security_group.tf
resource "aws_security_group" "open_sg" {
  name = "open_sg"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # ❌ open to world
  }
}
