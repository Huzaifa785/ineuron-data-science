# 18th June '23 - Error Handling and Logging Assignment

1. What is the role of the 'else' block in a try-except statement? Provide an example scenario where it would be useful.

Answer: The role of the `else` block in a try-except statement is to execute the code in the `else` block if there's no exception raised by the code in the `try` block. It would be useful when we want to execute some code if there's no exception raised by the code in the `try` block.

Example:

```python
try:
    print(1/1)
except:
    print("Error occurred")
else:
    print("No error occurred")

# Output:
# 1.0
# No error occurred
```

2. Can a try-except block be nested inside another try-except block? Explain with an example.

Answer: Yes, a try-except block can be nested inside another try-except block.

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

3. How can you create a custom exception class in Python? Provide an example that demonstrates its usage.

Answer: We can create a custom exception class in Python by inheriting the `Exception` class.

Example:

```python

custom_exception = Exception("Custom Exception: This is a custom exception.")

# Example usage
def divide(a, b):
    if b == 0:
        raise custom_exception
    return a / b

try:
    result = divide(10, 0)
    print(result)
except Exception as e:
    print(e)

# Output:
# Custom Exception: This is a custom exception.
```

4. What are some common exceptions that are built-in to Python?

Answer: Some common exceptions that are built-in to Python are:

- `ZeroDivisionError` - Raised when the second operand of a division or modulo operation is zero.
- `NameError` - Raised when a local or global name is not found.
- `TypeError` - Raised when an operation or function is applied to an object of inappropriate type.
- `ValueError` - Raised when a built-in operation or function receives an argument that has the right type but an inappropriate value.
- `IndexError` - Raised when a sequence subscript is out of range.

5. What is logging in Python, and why is it important in software development?

Answer: Logging is the process of recording the events that occur during the execution of a program. It is important in software development because it helps us to debug the program and find the errors in the program. If we don't log the events that occur during the execution of a program, then it will be difficult to debug the program and find the errors in the program.

6. Explain the purpose of log levels in Python logging and provide examples of when each log level would be appropriate.

Answer: The purpose of log levels in Python logging is to categorize the events that occur during the execution of a program. The log levels are:

- `DEBUG` - Detailed information, typically of interest only when diagnosing problems.
- `INFO` - Confirmation that things are working as expected.
- `WARNING` - An indication that something unexpected happened, or indicative of some problem in the near future.
- `ERROR` - Due to a more serious problem, the software has not been able to perform some function.
- `CRITICAL` - A serious error, indicating that the program itself may be unable to continue running.

Example:

```python
import logging

logging.basicConfig(level=logging.DEBUG)

logging.debug("This is a debug message")
logging.info("This is an info message")
logging.warning("This is a warning message")
logging.error("This is an error message")
logging.critical("This is a critical message")

# Output:
# DEBUG:root:This is a debug message
# INFO:root:This is an info message
# WARNING:root:This is a warning message
# ERROR:root:This is an error message
# CRITICAL:root:This is a critical message
```

7. What are log formatters in Python logging, and how can you customise the log message format using formatters?

Answer: Log formatters in Python logging are used to specify the format of the log messages. We can customise the log message format using formatters by specifying the format of the log messages in the `basicConfig` function.

Example:

```python
import logging

logging.basicConfig(level=logging.DEBUG, format="%(asctime)s - %(levelname)s - %(message)s")

logging.debug("This is a debug message")
logging.info("This is an info message")
logging.warning("This is a warning message")
logging.error("This is an error message")
logging.critical("This is a critical message")

# Output:
# 2023-06-27 18:38:07,150 - DEBUG - This is a debug message
# 2023-06-27 18:38:07,150 - INFO - This is an info message
# 2023-06-27 18:38:07,150 - WARNING - This is a warning message
# 2023-06-27 18:38:07,150 - ERROR - This is an error message
# 2023-06-27 18:38:07,150 - CRITICAL - This is a critical message
```

8. How can you set up logging to capture log messages from multiple modules or classes in a Python application?

Answer: 

```python

import logging

# Configure the root logger
logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')

# Create a logger for each module or class
logger_module1 = logging.getLogger('module1')
logger_module2 = logging.getLogger('module2')

# Example usage in module1
def function_in_module1():
    logger_module1.debug('Debug message in module1')
    logger_module1.info('Info message in module1')
    logger_module1.warning('Warning message in module1')
    logger_module1.error('Error message in module1')
    logger_module1.critical('Critical message in module1')

# Example usage in module2
def function_in_module2():
    logger_module2.debug('Debug message in module2')
    logger_module2.info('Info message in module2')
    logger_module2.warning('Warning message in module2')
    logger_module2.error('Error message in module2')
    logger_module2.critical('Critical message in module2')

# Logging messages from multiple modules or classes
function_in_module1()
function_in_module2()

# Output:
# 2023-06-27 18:41:33,175 - DEBUG - Debug message in module1
# 2023-06-27 18:41:33,175 - INFO - Info message in module1
# 2023-06-27 18:41:33,175 - WARNING - Warning message in module1
# 2023-06-27 18:41:33,175 - ERROR - Error message in module1
# 2023-06-27 18:41:33,175 - CRITICAL - Critical message in module1
# 2023-06-27 18:41:33,175 - DEBUG - Debug message in module2
# 2023-06-27 18:41:33,175 - INFO - Info message in module2
# 2023-06-27 18:41:33,175 - WARNING - Warning message in module2
# 2023-06-27 18:41:33,175 - ERROR - Error message in module2
# 2023-06-27 18:41:33,175 - CRITICAL - Critical message in module2
```

9. What is the difference between the logging and print statements in Python? When should you use logging over print statements in a real-world application?

Answer: The difference between the logging and print statements in Python is that the logging statements are used to record the events that occur during the execution of a program, while the print statements are used to display the output of a program. We should use logging over print statements in a real-world application because logging is more flexible than print statements. We can configure the logging statements to record the events that occur during the execution of a program in a file, while the print statements can only display the output of a program on the console.

10. Write a Python program that logs a message to a file named "app.log" with the following requirements:
    - The log message should be "Hello, World!"
    - The log level should be set to "INFO."
    - The log file should append new log entries without overwriting previous ones.

Answer:
    
```python
import logging

logging.basicConfig(filename='app.log', level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

logging.info('Hello, World!')
```
<!-- add image from /images -->
![Code File](/images/logging1.png)
![Log File](/images/logging2.png)

11. Create a Python program that logs an error message to the console and a file named
"errors.log" if an exception occurs during the program's execution. The error message should include the exception type and a timestamp.

Answer:

```python
import logging

logging.basicConfig(filename='errors.log', level=logging.ERROR, format='%(asctime)s - %(levelname)s - %(message)s')

try:
    1 / 0
except Exception as e:
    logging.error(e, exc_info=True)
```
<!-- add image from /images -->
![Code File](/images/logging3.png)
![Log File](/images/logging4.png)