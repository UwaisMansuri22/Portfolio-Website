resource "aws_s3_bucket" "my_bucket" {
  bucket = "uwais-mansuri-portfolio-bucket"  # Replace with a valid, unique name
  acl    = "private"

  tags = {
    Name        = "Uwais Mansuri Portfolio Bucket"
    Environment = "Development"
  }
}

