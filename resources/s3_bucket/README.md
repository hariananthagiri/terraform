# s3_bucket
* s3_bucket is used for storeing purpose
* it is stored in cloud we can use when we want 

### syntax
* resource "aws_s3_bucket" "s3_bucket_tf" {
*    bucket = "ananthagiri-s3-bucket"  # aws s3_bucket name
<!-- *    acl = "private" # access control is private
*    versioning {
*        enabled = true
* } -->
*    tags = {
*        Name = "my bucket"
*        Environment = "Dev"
*    } 
* }
