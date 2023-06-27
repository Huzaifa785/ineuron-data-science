# 17th June '23 - Error Handling Assignment

1. What is the role of try and exception block?

Answer: The `try` block is used to execute the code that might raise an exception, means this is the actual code but can have any errors if there's any mistake in the code. Whereas the `exception block` is used to handle the exception raised by the code in the `try` block.

2. What is the syntax for a basic try-except block?

Answer:

```python
try:
    # Code that might raise an exception
except:
    # Code to handle the exception
```

3. What happens if an exception occurs inside a try block and there is no matching except block?

Answer: If an exception occurs inside a try block and there is no matching except block, then the program will terminate with an error.

Example:

```python
try:
    print(1/0)
except:
    print("Error occurred")

# Output:
# Error occurred
```

4. What is the difference between using a bare except block and specifying a specific exception type?

Answer: The difference between using a bare except block and specifying a specific exception type is that the bare except block will handle all the exceptions raised by the code in the try block. Whereas the specific exception type will handle only the specified exception type.

5. Can you have nested try-except blocks in Python? If yes, then give an example.

Answer: Yes, we can have nested try-except blocks in Python.

Example:

```python
try:
    try:
        print(1/0)
    except ZeroDivisionError:
        print("ZeroDivisionError occurred")
except:
    print("Error occurred")

# Output:
# ZeroDivisionError occurred
```

6. Can we use multiple exception blocks, if yes then give an example.

Answer: Yes, we can use multiple exception blocks.

Example:

```python
try:
    print(1/0)
except ZeroDivisionError:
    print("ZeroDivisionError occurred")
except:
    print("Error occurred")

# Output:
# ZeroDivisionError occurred
```

7. Write the reason due to which following errors are raised:
   - EOFError
   - FloatingPointError
   - IndexError
   - MemoryError
   - OverflowError
   - TabError
   - ValueError

Answer:

- EOFError: Raised when the input() function hits the end-of-file condition. (End of file condition is when there is no more data to be read from the input.)
- FloatingPointError: Raised when a floating point operation fails.
- IndexError: Raised when the index of a sequence is out of range.
- MemoryError: Raised when an operation runs out of memory.
- OverflowError: Raised when the result of an arithmetic operation is too large to be represented.
- TabError: Raised when indentation consists of tabs or spaces.
- ValueError: Raised when a built-in operation or function receives an argument that has the right type but an inappropriate value.

8. Write code for the following given scenario and add try-exception block to it.
    - Program to divide two numbers
    - Program to convert a string to an integer
    - Program to access an element in a list
    - Program to handle a specific exception
    - Program to handle any exception

Answer:

- Program to divide two numbers

```python
try:
    print(1/0)
except ZeroDivisionError:
    print("ZeroDivisionError occurred")

# Output:
# ZeroDivisionError occurred
```

- Program to convert a string to an integer

```python
try:
    print(int("abc"))
except ValueError:
    print("ValueError occurred")

# Output:
# ValueError occurred
```

- Program to access an element in a list

```python
try:
    print([1, 2, 3][3])
except IndexError:
    print("IndexError occurred")

# Output:
# IndexError occurred
```

- Program to handle a specific exception

```python
try:
    print(1/0)
except ZeroDivisionError:
    print("ZeroDivisionError occurred")

# Output:
# ZeroDivisionError occurred
```

- Program to handle any exception

```python
try:
    print(1/0)
except:
    print("Error occurred")

# Output:
# Error occurred
```