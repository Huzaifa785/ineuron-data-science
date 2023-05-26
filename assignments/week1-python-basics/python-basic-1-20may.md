# Python Basic 1 - 20 May 2023

1. What are keywords in python? Using the keyword library, print all the python keywords.

Answer: 
- Keywords are the reserved words in Python.
- We cannot use a keyword as a variable name, function name or any other identifier. They are used to define the syntax and structure of the Python language.
- In Python, keywords are case sensitive.

Example:
```python
import keyword
print(keyword.kwlist)

# Output:
['False', 'None', 'True', 'and', 'as', 'assert', 'async', 'await', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']
```

2. What are the rules to create variables in python?

Answer:
- A variable name must start with a letter or the underscore character.
- A variable name cannot start with a number.
- A variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ ).
- Variable names are case-sensitive (ineuron, iNeuron and INEURON are three different variables).

3. What are the standards and conventions followed for the nomenclature of variables in python to improve code readability and maintainability?

Answer: 
- Use a lowercase single letter, word, or words. Separate words with underscores to improve readability.
- Examples:
    - x
    - var
    - my_variable
- Use descriptive names that describe the purpose of the variable.
- Use camelCase for naming classes, functions, methods, and instances.
- Examples:
    - ClassName
    - functionName()
    - methodName()
    - instanceName


4. What will happen if a keyword is used as a variable name?

Answer: If a keyword is used as a variable name, then it will throw an error because keywords are reserved words in Python.

Example:
```python
if = 2 # This will throw an error because if is a keyword
``` 

5. For what purpose def keyword is used?

Answer: The `def` keyword is used to define a function.

Example:
```python
def add(a, b):
    return a + b
```

6. What is the operation of this special character ‘\’?

Answer: The `\` character is used to escape characters that otherwise have a special meaning, such as newline, backslash itself, or the quote character.

Example:
```python
print('This is a single quote: \'')
print("This is a double quote: \"")
print('This is a backslash: \\')
print('This is a newline: \n')
```

7. Give an example of the following conditions:
- Homogeneous list
- Heterogenous list
- Homogeneous tuple

Answer:
- Homogeneous list: A list that contains elements of the same type is called a homogeneous list.
- Example:
```python
[1, 2, 3, 4, 5]
```
- Heterogeneous list: A list that contains elements of different types is called a heterogeneous list.
- Example:
```python
[1, 'a', 2.5, True]
```
- Homogeneous tuple: A tuple that contains elements of the same type is called a homogeneous tuple.
- Example:
```python
(1, 2, 3, 4, 5)
```

8. Explain the mutable and immutable data types with proper explanation & examples.

Answer:
- Mutable data types: The data types whose values can be changed are called mutable data types. Mutable data types are list, set, dictionary.
- Example of List:
```python
list1 = [1, 2, 3, 4, 5]
list1[0] = 10
print(list1) # Output: [10, 2, 3, 4, 5]
```
- Example of Set:
```python
set1 = {1, 2, 3, 4, 5}
set1.add(6)
print(set1) # Output: {1, 2, 3, 4, 5, 6}
```
- Example of Dictionary:
```python
dict1 = {'a': 1, 'b': 2, 'c': 3}
dict1['d'] = 4
print(dict1) # Output: {'a': 1, 'b': 2, 'c': 3, 'd': 4}
```

- Immutable data types: The data types whose values cannot be changed are called immutable data types.
- Example:
```python
tuple1 = (1, 2, 3, 4, 5)
tuple1[0] = 10 # This will throw an error because tuple is immutable
```

9. Write a code to create the given structure using only for loop.
```
    *
   ***
  *****
 *******
*********
```

Answer:
```python
for i in range(1, 6):
    for j in range(1, 6 - i):
        print(' ', end='')
    for j in range(1, 2 * i):
        print('*', end='')
    print()
```

- Explanation: 
    - The outer loop is used to print the rows.
    - The first inner loop is used to print the spaces.
    - The second inner loop is used to print the stars.

10. Write a code to create the given structure using while loop.
```
|||||||||
 |||||||
  |||||
   |||
    |
```

Answer:
```python
i = 1
while i <= 5:
    j = 1
    while j < i:
        print(' ', end='')
        j += 1
    j = 1
    while j <= 2 * (5 - i) + 1:
        print('|', end='')
        j += 1
    print()
    i += 1
```

- Explanation: 
    - The outer loop is used to print the rows.
    - The first inner loop is used to print the spaces.
    - The second inner loop is used to print the pipes.