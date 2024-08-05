# security group
* it is used to maintain fire wall and mangeing incomeing and outgoing traffic
### ingress
* it is nothing but allowing incomeing traffic
* without ingress rules we cant open instanceses allocate requied instances
* who can access our instance 
* what ports need to allow 
* we can give n no.of ingress values one by one
* while createing sg vpc_id is very importent
* genrally port values  taks as range from = 1  to = 10 now it accept from 1 to 10 (1,2,3,....10) 
* to avide range we have to same value for from and to ports like from = 1  to = 1 now it accept connection from only port no 1
#### syntax
###  ingress

```terraform
ingress {
       description      = "Allow All ports"
       from_port        = 0
       to_port          = 0 
       protocol         = "-1"
       cidr_blocks      = ["0.0.0.0/0"]
   }
ingress {
       description      = "Allow All ports"
       from_port        = 0
       to_port          = 65535
       protocol         = "-1"
       cidr_blocks      = ["0.0.0.0/0"]
   }
ingress {
       description      = "Allow All ports"
       from_port        = 22 #allowing ssh protocol
       to_port          = 22
       protocol         = "tcp"
       cidr_blocks      = ["0.0.0.0/0"]
   }
```

* to allow all we will give from_port = 0 and to_port = 0 if it wont work give as below
* to allow all we will give from_port = 0 and to_port = 65535
* cidr_blocks = ["0.0.0.0/0"] #ideally your home public IP address, but it frequently changes 
* protocol="-1" to allow all ports


###  egress
* it is nothing but outgoing traffic
* what we can access 
* we can give n no.of egress values one by one
* genrelly we wont change egress it is fixed

#### syntax

```terraform
egress {
       from_port        = 0
       to_port          = 0
       protocol         = "-1"
       cidr_blocks      = ["0.0.0.0/0"]
   }
```
* to attach our created security group to ec2 instance by below way
####   vpc_security_group_ids = [aws_security_group.roboshop-all.id]  # to attach created security group to our instance

#### to allow all ipv4/6 ["::/0"]
* ipv4_cldr_blocks = ["::/0"]
* ipv6_cldr_blocks = ["::/0"]

#### NOTE
* security groug contain two names 
* 1. "name" given in resource below it is not editable we cant change if we change and run terraform apply command
* terraform will destroy the old name resource and create the new name resource again 
* 2. name is given in tages aws_security_group name it is editable we can change it 

#### ALLOWING_CONNECTIONS
* basically to allow connections by use ingrass rules in ingrass rules we use cidr_blocks(ip_address) and port numbers 
* but ip_address are not constent values these changes regularly to make them cosnstent we have to use elastic ips but these are costly
* to overcome this situation we create security groups and attach it to another security group 
* now it takes security group into consideration instad of ip_address
* now attached security group is connected to a instance and our main security group allow the incoming traffic from that instance irrespective of its ip address it accept the connection from that instance (attached group instance connection)
###### a security_group can be attached with another security_group instad of giveing ip_address and port numbers and it is best practice
 
* to do this we have a resource devloped by aws
##### syntax
# #mongodb accepting connections from catalogue instance 
```terraform
resource "aws_security_group_rule" "mongodb_catalogue" {
  source_security_group_id = module.catalogue.sg_id (attaching sg id)
  type                     = "ingress"
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"
  security_group_id        = module.mongodb.sg_id   (main sg id)
}
```
### we are adding catalogue sg to mangodb sg in above 
###### we can create n no of connection like above just like we create for ingress rules

#### instad of directly giveing ip_address we will can create a sg and attach to another sg and it allow the tyraffic from the instance if attached sg ias connected to it 

#### note
**whwn we are useing modules in security group use double quotes for variables**
  * vpc_security_group_ids = ["var.sg1_id"]

