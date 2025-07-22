resource "aws_s3_bucket" "b" {
  bucket = "s3terraformtony2"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "S3Test"
    Environment = "QA"
  }
}
