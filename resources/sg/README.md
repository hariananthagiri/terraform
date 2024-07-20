# security group
* it is used to maintain fire wall and mangeing incomeing and outgoing traffic
### ingress
* it is nothing but allowing incomeing traffic
* who can access our instance 
* what ports need to allow 
* we can give n no.of ingress values one by one

#### syntax
* ingress {
*        description      = "Allow All ports"
*        from_port        = 0
*        to_port          = 0 
*        protocol         = "tcp"
*        cidr_blocks      = ["0.0.0.0/0"]
*    }
* ingress {
*        description      = "Allow All ports"
*        from_port        = 22 #allowing ssh protocol
*        to_port          = 22
*        protocol         = "tcp"
*        cidr_blocks      = ["0.0.0.0/0"]
*    }

* to allow all we will give from_port = 0 and to_port = 0

###  egress
* it is nothing but outgoing traffic
* what we can access 
* we can give n no.of egress values one by one
* genrelly we wont change egress it is fixed

#### syntax
egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

* to attach our created security group to ec2 instance by below way
####   vpc_security_group_ids = [aws_security_group.roboshop-all.id]  # to attach created security group to our instance

#### to allow all ipv4/6 ["::/0"]
* ipv4_cldr_blocks = ["::/0"]
* ipv6_cldr_blocks = ["::/0"]


