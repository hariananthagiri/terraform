resource "aws_s3_bucket" "s3_bucket_tf" {
    bucket = "ananthagiri-s3-bucket"
    tags = {
        Name = "my bucket"
        Environment = "Dev"
    }
  
}