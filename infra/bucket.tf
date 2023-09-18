provider "aws" {
  region = "us-west-1"
}

#* Domain Bucket
resource "aws_s3_bucket" "this" {
  bucket = "github-actions-practice-314"
}

#* Domain Bucket Index File
resource "aws_s3_bucket_website_configuration" "this" {
  bucket = "github-actions-practice-314"
  index_document {
    suffix = "indexx.html"
  }
}
