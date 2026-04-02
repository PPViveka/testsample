# insecure_s3.tf
resource "aws_s3_bucket" "bad_bucket" {
  bucket = "my-public-bucket"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.bad_bucket.id

  block_public_acls   = false
  block_public_policy = false
}
