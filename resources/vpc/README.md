# VPC
* it stands for virtual private cloud
* it act as data center
* it is an isolated network with in aws where you can create resources only for our project

### steps to setup vpc

#### create vpc
* create vpc with cidr "10.0.0.0/16"

#### create internet gateway
* create internet gateway and attach it with vpc
* for internet gateway we use cidr "0.0.0.0/0"
#### create NAT gateway
* it stands for Network Address Translator
* it is used to enable the outgoing internet
* it controls the outgoing traffic for our private subnet
* any resource that present in private subnet should not have the access from outside  of our aws environment
* sometimes those particular servers present inside our public subnet need to access the internet to get the updates
* in this case NAT gatway is used to get the access to the internet to resources present in the private subnet
* NAT gateway allows only outgoing traffic for private subnets incomeing traffic is not allowed here
##### note
* NAT gateway should be created in public subnet because it has internet connectivity then we add it in the route_tables
##### EIP
* elastic ip
* to setup NAT gateway we need to create a elastic ip
* elastic ip means a fixed ip it wont change again and again
* it is chargeble

#### create subnets by attaching with our vpc
* create public subnet with cidr "10.0.1.0/24"
* create private subnet with cidr "10.0.2.0/24"

#### create route_table by attaching with our vpc
* create public route_table
* create private route_table

#### create internet gateway by attaching with our vpc
* create internet gateway and attach it with vpc

#### route_table associations
* route table contains subnets
* route_table plays key role in vpc
* we are attaching subnets to route table by using route_table assosiation option as shown below
##### subnets ----> route_table ----> edit route_table assosiation ----> attach with our route_table
* the above option can be achived by route_table also
* attach public subnet to public route_table
* attach private subnet to private route_table

#### routes 
##### route_table ----> select a route_table ----> routes ----> edit routes ----> select destination cidr and target ----> add route
###### destination
* we can select cidr ip-address here 
###### target
* it is used to attach internet gateway, NAT gateway, vpc peering and e.t.c.. by using target
* we will attach the created nternet gateway, NAT gateway, vpc peering and e.t.c.. here by using this option

###### Note
* attach internet gateway to public route_table
* we wont attach internet gateway to private route_table genrelly it is attached with NAT gateway
###### Note
* select subnet and goto edit subnet settings and enable auto assign public ipv4 option select it and save it
* not select auto assign private ipv4 option leave it as it is

### vpc peering
* by default we cant connect to 2 vpcs it is possible through vpc peering both vpcs should have different CIDR

#### requester vpc
* I WANT TO CONNECT WITH YOU PLESE ACCEPT MY REQUEST

#### accepter vpc
* vpcs in same region same account
* vpcs in another region same account
* vpcs in same region another account
* vpcs in different region another account
#### destination
* for accpter route_table for reciver route_table we have to do peering connections by using there destinations as below
##### for accepter ----------> use reciver destination cidr ip-address
##### for reciver ----------> use accepter destination cidr ip-address
* we perform above operation using routes













