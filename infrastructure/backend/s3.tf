resource "aws_s3_bucket" "terraform_bucket" {
  bucket        = "argocd-pg-tf-bucket"
  force_destroy = false
}

# Versioning
resource "aws_s3_bucket_versioning" "version" {
  bucket = aws_s3_bucket.terraform_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.terraform_bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# ACL
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.terraform_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
# Logging