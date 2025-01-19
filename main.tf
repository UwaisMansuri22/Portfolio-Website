# AWS Provider Configuration
provider "aws" {
  region = "us-east-1" # Specify the AWS region
}

# Reference the existing S3 bucket by name (without recreating it)
data "aws_s3_bucket" "existing_bucket" {
  bucket = "uwais-portfolio-bucket" # Your existing bucket name
}

# Enable Static Website Hosting
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = data.aws_s3_bucket.existing_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "404.html" # Optional, replace if you have an error file
  }
}

# Set Bucket Policy for Public Access
resource "aws_s3_bucket_policy" "public_policy" {
  bucket = data.aws_s3_bucket.existing_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:GetObject",
        Resource  = "arn:aws:s3:::${data.aws_s3_bucket.existing_bucket.id}/*"
      }
    ]
  })
}

# Upload All Static Files to the Bucket
resource "aws_s3_bucket_object" "website_files" {
  for_each    = fileset("/Users/uwaismansuri/Desktop/terraform-project", "**/*") # Path to your folder
  bucket      = data.aws_s3_bucket.existing_bucket.id
  key         = each.value
  source      = "/Users/uwaismansuri/Desktop/terraform-project/${each.value}"
  content_type = lookup(
    {
      html = "text/html"
      css  = "text/css"
      js   = "application/javascript"
      png  = "image/png"
      jpg  = "image/jpeg"
      jpeg = "image/jpeg"
      gif  = "image/gif"
      ico  = "image/x-icon"
      txt  = "text/plain"
    }, split(".", each.value)[length(split(".", each.value)) - 1], "application/octet-stream"
  )
}