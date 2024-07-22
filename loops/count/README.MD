### COUNT
* count is used fot=r ittration purpose
* when we want to write the same code for multiple times we can use count
* count = "number"
### [count.index]
* to perform ittration terraform given a special variable called [count.index]
* it is used to switch in ittration 
* it stores only number i.e [count.index] = 0, 1, 2,.............n
* at fist ittration it stores like web[0] it gives the value at first place
* it manly used in list type [ "0", "1", "2", "3", "4", "5", "n" ] 
* we can use index at ittration 
#### aws_instance.web[index]
#### aws_instance.web[index].attribute
#### aws_instance.web[*] 
#### NOTE
* it is mandatory to give index whent we are useing count
### length()
* every time we cant give number in count to avide that we use length function
* length function is used to calculate length of a variable i.e length(var.variable_name)

