resource "aws_s3_bucket" "project_bucket" {
  bucket = "gideon-joy-terraform-project-2026"

  tags = {
    Name = "terraform-s3-bucket"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.project_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}