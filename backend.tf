terraform {
  backend "s3" {
    bucket = "mystatebucketleo"
    key    = "state"
    region = "ap-south-1"
    dynamodb_table = "backend_table"
  }
}
