resource "aws_ecr_repository" "this" {
  name = "web-app"
  encryption_configuration {
    encryption_type = "AES256"
  }
}