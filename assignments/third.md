# Assignment 3

1. Why are functions advantageous to have in your programs?

Answer: Functions are advantageous to have in our programs because they allow us to reuse the code without having to write it again and again. They also allow us to break down our code into smaller chunks which makes it easier to read and understand. And it promotes the DRY principle i.e. Don't Repeat Yourself.

2. When does the code in a function run: when it's specified or when it's called?

Answer: The code in a function runs when it is called.

3. What statement creates a function?

Answer: The `def` statement creates a function.

Example:
```python
def add(a, b):
    return a + b
```

4. What is the difference between a function and a function call?

Answer: A function is a block of code that performs a specific task. A function call is the code that executes the function.

Example:
```python
def add(a, b):
    return a + b

add(2, 3) # This is a function call
```

5. How many global scopes are there in a Python program? How many local scopes?

Answer: There is only one global scope in a Python program. There can be multiple local scopes in a Python program.

6. What happens to variables in a local scope when the function call returns?

Answer: The variables in a local scope are destroyed when the function call returns. They are no longer accessible.

Example:
```python
def add(a, b):
    return a + b

add(2, 3) # This is a function call
print(a) # This will throw an error because a is not defined
```

7. What is the concept of a return value? Is it possible to have a return value in an expression?

Answer: A return value is the value that a function call evaluates to. Yes, it is possible to have a return value in an expression because a function call is an expression. For example, `add(2, 3)` is an expression that evaluates to 5.

8. If a function does not have a return statement, what is the return value of a call to that function?

Answer: If a function does not have a return statement, then the return value of a call to that function is `None`.

Example:
```python
def add(a, b):
    a + b

print(add(2, 3)) # This will print None
```

9. How do you make a function variable refer to the global variable?

Answer: To make a function variable refer to the global variable, we use the `global` keyword. 

Example:
```python
a = 10

def add(b):
    global a
    return a + b

print(add(2)) # This will print 12
```

10. What is the data type of None?

Answer: The data type of `None` is `NoneType`.

11. What does the `import areallyourpetsnamederic` statement do?

Answer: The `import areallyourpetsnamederic` statement imports the module named `areallyourpetsnamederic`.

12. If you had a function named `bacon()` in a module named `spam`, how would you call it after importing `spam`?

Answer: We can call the function `bacon()` in a module named `spam` by using the dot operator. For example, `spam.bacon()`.

Example:
```python
import spam

spam.bacon()
```

13. What can you do to save a programme from crashing if it encounters an error?

Answer: We can use the `try` and `except` statements to save a programme from crashing if it encounters an error.

Example:
```python
try:
    print(10 / 0)
except ZeroDivisionError:
    print('Cannot divide by zero')
```

14. What is the purpose of the `try` clause? What is the purpose of the `except` clause?

Answer: The purpose of the `try` clause is to run the code that might cause an error. The purpose of the `except` clause is to handle the error that might occur in the `try` clause.