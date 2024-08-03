* if you want any value to be fetch just store the value in a variable loop it and give it where you want
* in two ways we can fetch the data to a variable by hardcodeing the data manualy and giveing data dynamically

#### example
* Availabulity_zones = [ "us-east-1a", "us-east-1b", "us-east-1c" ]

#### types of arguments in aws
* Availabulity_zones is list type
* [ "us-east-1a", "us-east-1b", "us-east-1c" ]

* cidr_block is list type 
* [ "10.0.1.0/16", "10.0.2.0/16" ]

* port-number is list type []
* security group is list type []
* ami_id is string type
* records in route53 is list type []

* in two ways we can fetch the data to a variable by hardcodeing the data manualy and giveing data dynamically
* records in route53 are list type

#### note
* if we are in same folder we can apply anything you will have access
* onece you cross the folder you will loss the access it is called as different project 

#### note
* when we use StringList type it must be a cama sapareted value otherwise it through an error use  join function to do it join(",", list)

* impartent commands 
* by using url it gives the information about name of **URL** and its **ip-address**
    **nslookup URL**
* to connect to onther **ip-address** from different **server**
    **telnet destination-ip-address port-number**
#### note
 * when we are giveing priority in auto scalling, listenor rule supply priority by using variable only with different priority value  if not it through an error
