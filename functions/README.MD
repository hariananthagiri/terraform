# FUNCTIONS
## max(10, 12, 15)
* it gives the maximum value

## min(1, 2, 3)
* it gives the minimum value

## upper()
* it convers the lower case to upper 

## lower()
* it convers the upper case to  lower

## length()
* it gives the legth as a number 1, 2, 3, 4,......n
## startswith(string, prifix)
* by using the starting value of prifix it take the element
### example
* startswith("hello world" hello)


# map
## functions used for mapping

## lookup(map key)
* by using map variable and key we can take the value

## merge()
* we can use merge function to combine or merge "n" no.of mapping variables 

# LIST
### we use multipule functions in list 

## element(list, index)
* by using this we can retrive a single element from the list
#### example:-  element(list, 2)
* element(["a" "b" "c"], 1) o/p----> "b"  (i.e list start with 0, 1, 2)

## slice(list, start-index, end-index)
* it gives the variables in list from this range to this range
### example slice(["1", "2", "3"], 1, 2)
#### output
* [
* "2"
* "3"
* ]

## concat(["a", "b"], ["c","d"])
* it will take two or more list and combine them as sigle list
### output
*[
    "a"
    "b"
    "c"
    "d"
]

## join(delimter, list)
* it is used to combine both elements in the given list or string with the given delimiter
### example
* join(",", ["this" "and" "that"])
#### output
* this, and, that

## split(delimter, list)
* it is used to split both elements in the given list or string with the given delimiter
### example
* join(",", ["this" "and" "that"])
#### output
* [ this, 
*   and, 
*   that
* ]
# for best practice use interpolation in functions
### "${functions+variables+special charectors}"

