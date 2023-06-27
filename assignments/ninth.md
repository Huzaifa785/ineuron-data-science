# 11th June - Python (Functions Assignment) - 1

1. What is a lambda function in Python, and how does it differ from a regular function?

Answer: Lambda functions are anonymous functions that are defined without a name. Lambda functions are different from regular functions in the following ways:

- Lambda functions are defined without a name whereas regular functions are defined with a name.
- Lambda functions can have only one expression whereas regular functions can have multiple expressions.
- Lambda functions can have only one line of code whereas regular functions can have multiple lines of code.

Example of a lambda function:

```python
add = lambda a, b: a + b
add(1, 2)
```

2. Can a lambda function in Python have multiple arguments? If yes, how can you define and use them?

Answer: Yes, a lambda function in Python can have multiple arguments. We can define and use them as follows:

```python
add = lambda a, b: a + b
add(1, 2)
```

3. How are lambda functions typically used in Python? Provide an example use case.

Answer: Lambda functions are typically used in Python to define functions that are used only once or we can say they are used where you want to do some small stuff. For example, if we want to add two numbers, we can use a lambda function instead of defining a regular function.

```python
add = lambda a, b: a + b
add(1, 2)
```

4. What are the advantages and limitations of lambda functions compared to regular functions in Python?

Answer:
- Advantages of lambda functions:
    - A lambda expression defines a function; the advantage over the `def` statement is you don't need to write a name for it.
    - No additional variables are added.
    - The code is simple.
- Limitations of lambda functions:
    - Lambda functions can have only one expression whereas regular functions can have multiple expressions.
    - Lambda functions can have only one line of code whereas regular functions can have multiple lines of code.

5. Are lambda functions in Python able to access variables defined outside of their own scope? Explain with an example.

Answer: Yes, lambda functions in Python are able to access variables defined outside of their own scope.

```python
a = 1
add = lambda b: a + b
add(2) # 3
```

6. Write a lambda function to calculate the square of a given number.

Answer:

```python
square = lambda a: a * a
square(2) # 4
```

7. Create a lambda function to find the maximum value in a list of integers.

Answer:

```python
max = lambda a: max(a)
max([1, 2, 3]) # 3
```

8. Implement a lambda function to filter out all the even numbers from a list of integers.

Answer:

```python
even = lambda a: [i for i in a if i % 2 == 0]
even([1, 2, 3, 4]) # [2, 4]
```

9. Write a lambda function to sort a list of strings in ascending order based on the length of each string.

Answer:

```python
sort = lambda a: sorted(a, key=len)
print(sort(['iNeuron', 'Python', 'Assignment'])) # ['Python', 'iNeuron', 'Assignment']
```

10. Create a lambda function that takes two lists as input and returns a new list containing the common elements between the two lists.

Answer:

```python
common = lambda a, b: [i for i in a if i in b]
common([1, 2, 3], [2, 3, 4]) # [2, 3]
```

11. Write a recursive function to calculate the factorial of a given positive integer.

Answer:

```python
def factorial(n):
    if n == 1:
        return 1
    else:
        return n * factorial(n - 1)

factorial(5) # 120
```

12. Implement a recursive function to compute the nth Fibonacci number.

Answer:

```python
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)

fibonacci(5) # 5
```

13. Create a recursive function to find the sum of all the elements in a given list.

Answer:

```python
def sum(a):
    if len(a) == 1:
        return a[0]
    else:
        return a[0] + sum(a[1:])

sum([1, 2, 3]) # 6
```

14. Write a recursive function to determine whether a given string is a palindrome.

Answer:

```python
def palindrome(s):
    if len(s) <= 1:
        return True
    else:
        return s[0] == s[-1] and palindrome(s[1:-1])

palindrome('racecar') # True
```

15. Implement a recursive function to find the greatest common divisor (GCD) of two positive integers.

Answer:

```python
def gcd(a, b):
    if b == 0:
        return a
    else:
        return gcd(b, a % b)

gcd(12, 8) # 4