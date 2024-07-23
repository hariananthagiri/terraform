module "ec2_instance" {
    #source = "git::https://github.com/shivaananthagiri/Terraform.git?ref=main"   # give the path here
    # variable = "value"
    # # refering sub-folder
    # source = "git::https://github.com/hariananthagiri/terraform.git//instances?ref=main"   # give the path here
     # # refering sub-folder and it contains a folder
    #  source = "git::https://github.com/hariananthagiri/terraform.git//instances/ec2?ref=main"   # give the path here
     source = "git::https://github.com/hariananthagiri/terraform.git//functions/02-map?ref=main"   # give the path here
}
