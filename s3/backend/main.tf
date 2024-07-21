resource "aws_s3_bucket" "default" {
  bucket = "tfstate-apnortheast2"

  tags = {
    Name        = "tfstate-apnortheast2"
    Service     = var.service
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "default" {
  bucket = aws_s3_bucket.default.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "default" {
  name         = "terraform-state-lock"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "terraform-state-lock"
    Service     = var.service
    Environment = var.environment
  }
}
