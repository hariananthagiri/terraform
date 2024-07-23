module "ec2_instance" {
    #source = "git::https://github.com/shivaananthagiri/Terraform.git?ref=main"   # give the path here
    # variable = "value"
    source = "git::https://github.com/hariananthagiri/terraform.git//instances?ref=main"   # give the path here

}
