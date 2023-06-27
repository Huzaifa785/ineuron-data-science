# Assignment 8 - June 10th, 2023

1. In Python, what is the difference between a built-in function and a user-defined function? Provide an example of each.

Answer: Built-in functions are the functions that are already defined in Python. Whereas user-defined functions are the functions that are defined by the user for their own use case that's not available in the built-in functions.

Example of built-in function: `print()`

Example of user-defined function:

```python
def add(a, b):
    return a + b
```

2. How can you pass arguments to a function in Python? Explain the difference between positional arguments and keyword arguments.

Answer: Arguments can be passed to a function in Python by using the function name followed by the arguments enclosed in parentheses.

- Positional arguments are the arguments that are passed to a function in the order they are defined in the function definition.
- Keyword arguments are the arguments that are passed with the argument name equal to the argument value.

Example of positional arguments:

```python
def add(a, b):
    return a + b

add(1, 2)

```

Example of keyword arguments:

```python
def add(a, b):
    return a + b

add(a=1, b=2)

```

3. What is the purpose of the return statement in a function? Can a function have multiple return statements? Explain with an example.

Answer: The purpose of the return statement in a function is to return a value from the function, means it will not print, just return the value so that we can use anywhere in our code. A function can have multiple return statements. For example, if we want to return a value based on some condition, we can use multiple return statements.

Example of a function with multiple return statements:

```python
def add(a, b):
    if a == 0:
        return b
    elif b == 0:
        return a
    else:
        return a + b

add(1, 2)
add(0, 2)
add(1, 0)
```

4. What are lambda functions in Python? How are they different from regular functions? Provide an example where a lambda function can be useful.

Answer: Lambda functions are anonymous functions that are defined without a name. Lambda functions are different from regular functions in the following ways:

- Lambda functions are defined without a name whereas regular functions are defined with a name.
- Lambda functions can have only one expression whereas regular functions can have multiple expressions.
- Lambda functions can have only one line of code whereas regular functions can have multiple lines of code.

Example of a lambda function:

```python
add = lambda a, b: a + b
add(1, 2)
```

5. How does the concept of "scope" apply to functions in Python? Explain the difference between local scope and global scope.

Answer: The concept of "scope" applies to functions in Python in the following ways:

- Variables defined inside a function have local scope. These variables can be accessed only inside the function.
- Variables defined outside a function have global scope. These variables can be accessed inside the function.

Example of local scope:

```python
def add(a, b):
    c = a + b
    return c

add(1, 2)
print(c) # NameError: name 'c' is not defined
```

Example of global scope:

```python
c = 0

def add(a, b):
    global c
    c = a + b
    return c

add(1, 2)
print(c) # 3
```

6. How can you use the "return" statement in a Python function to return multiple values?

Answer: The return statement is used to exit a function and return a single value but if we want to return multiple values, we can achieve that by separating them with commas.

Example of a function that returns multiple values:

```python
def return_multiple_values():
    value1 = 7
    value2 = "iNeuron"
    value3 = [1, 2, 3]
    return value1, value2, value3

result = return_multiple_values()
print(result)  # Output: (7, 'iNeuron', [1, 2, 3])
```

7. What is the difference between the "pass by value" and "pass by reference" concepts when it comes to function arguments in Python?

Answer: I had a hard time understanding this concept. But found a post on Linkedin with which I understood a little bit, maybe I can get wrong.

- So Pass by value means that a copy of the argument is passed to the function or method. So, if we change the value of the argument inside the function, it will not affect the original value.

Example of pass by value:

```python
def change_value(value):
    value = 10

value = 5
change_value(value)
print(value) # 5
```

- Pass by reference means that the reference to the argument is passed to the function or method. So, if we change the value of the argument inside the function, it will affect the original value.

Example of pass by reference:

```python
def change_value(value):
    value[0] = 10

value = [5]
change_value(value)
print(value) # [10]
```
![Pass By Value VS Pass By Reference](https://media.licdn.com/dms/image/C4D22AQFDJJTtCH_uZw/feedshare-shrink_800/0/1678681497508?e=1691020800&v=beta&t=lctEPMbsE3BeE9VQOVuSyZdKLMyFNwdqATgN_v-W4jg)
Reference: penjee.com

8. Create a function that can intake integer or decimal value and do following operations:
   a. Logarithmic function (log x)
   b. Exponential function (exp(x))
   c. Power function with base 2 (2^x)
   d. Square root

Answer:

```python
import math

def perform_operations(value):
    log_result = math.log(value)

    exp_result = math.exp(value)

    power_result = math.pow(2, value)

    sqrt_result = math.sqrt(value)

    return log_result, exp_result, power_result, sqrt_result

result = perform_operations(3.5)
print("Logarithmic result:", result[0])
print("Exponential result:", result[1])
print("Power (base 2) result:", result[2])
print("Square root result:", result[3])
```

9. Create a function that takes a full name as an argument and returns first name and last name.

Answer:

When we get a full name, there will be a space between first name and last name. So, we can split the full name by space and get the first name and last name.

```python
def get_first_and_last_name(full_name):
    first_name = full_name.split(' ')[0]
    last_name = full_name.split(' ')[1]
    return first_name, last_name

get_first_and_last_name('John Doe')
```
