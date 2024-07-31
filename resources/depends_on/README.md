# depends_on
* it is used to create a dependency between two resources
* if you want some resources to be created before any other resource we use this

## syntax
depends_on = [ 
    aws_s3_bucket.s3_bucket_tf
   ]
* it is declered in squre brakets [resource_name]

### example
* we are createing two instances instance-a and instance-b
* iam giveing 
```terraform
depends_on = [ 
  aws_instance.instance-b
]
```
#### now first instance-b is created then instance-a is created