resource "aws_instance" "web" {     # terraform reference name
  ami           = var.ami_id 
  instance_type = var.instance_type
  depends_on = [ 
    aws_s3_bucket.s3_bucket_tf
   ]
  tags = var.instance_name
}
resource "aws_s3_bucket" "s3_bucket_tf" {
    bucket = "ananthagiri-s3-bucket"
    tags = {
        Name = "my bucket"
        Environment = "Dev"
    }
  
}