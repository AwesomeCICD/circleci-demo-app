terraform {
  backend "s3" {
    bucket = "circleci-demo-app-tf"
    region = "us-west-2"
    dynamodb_table = "circleci-demo-app-tf-lock"
  }
}