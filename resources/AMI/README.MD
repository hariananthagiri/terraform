# AMI
* It stands as **AMAZON MEACHINE IMAGE**
* it provide the information requied to lauch an instance
* you can launch multipule instances from a single AMI when you need **multipule instances with same configureations**
*  you can use different AMI's to lauch instances when you need instances with different configureations

### syntax
```terrraform
resource "aws_ami_from_instance" "main" {
  name = "roboshop-ami"
  source_instance_id = aws_instance.web.id
}
```