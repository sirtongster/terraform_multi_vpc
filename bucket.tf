# Bucket must already be created
# Using AWS CLI
# aws s3api create-bucket --bucket <BUCKET_NAME>

terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    region  = "us-east-1"
    profile = "default"
    key     = "tf-lac-dev-tf-state-file"
    bucket  = "tf-lac-dev-tf-state-s3"
  }
}