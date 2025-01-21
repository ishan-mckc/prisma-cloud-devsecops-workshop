provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "5df6e4d8-c164-4331-9507-e16d2ebd9981"
    git_commit           = "131ba85b3e85e96fe4ed05c5d477a91134f4cb70"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 17:26:15"
    git_last_modified_by = "ishan_mandle@mckinsey.com"
    git_modifiers        = "ishan_mandle"
    git_org              = "ishan-mckc"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
