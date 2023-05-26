# Assignment 7

1. Create two int type variables, apply addition, subtraction, division and multiplications and store the results in variables. Then print the data in the following format by calling the variables:

```
First variable is __ & second variable is __.
Addition: __ + __ = __
Subtraction: __ - __ = __
Multiplication: __ * __ = __
Division: __ / __ = __
```

Answer:

```python
num1 = 10
num2 = 20

print('First variable is', num1, '& second variable is', num2)
print('Addition:', num1, '+', num2, '=', num1 + num2)
print('Subtraction:', num1, '-', num2, '=', num1 - num2)
print('Multiplication:', num1, '*', num2, '=', num1 * num2)
print('Division:', num1, '/', num2, '=', num1 / num2)

# Output:
# First variable is 10 & second variable is 20
# Addition: 10 + 20 = 30
# Subtraction: 10 - 20 = -10
# Multiplication: 10 * 20 = 200
# Division: 10 / 20 = 0.5
```

2. What is the difference between the following operators:
- ```‘/’ & ‘//’```
- ```‘**’ & ‘^’```

Answer:

- `/` is the division operator and `//` is the floor division operator. `/` will return the floating point result and `//` will return the integer result.
- Example:
```python
>>> 10 / 3
3.3333333333333335
>>> 10 // 3
3
```

- `**` is the exponentiation operator and `^` is the bitwise XOR operator.
- Example:
```python
>>> 2 ** 3
8
>>> 2 ^ 3
1
```

3. List the logical operators.

Answer: `and`, `or` and `not` are the logical operators.

Example:
```python
>>> True and False
False
>>> True or False
True
>>> not True
False
```

4. Explain right shift operator and left shift operator with examples.

Answer:

- Right shift operator: The right shift operator shifts the bits of the number to the right by the number of bits specified. The rightmost bits are discarded and the leftmost bits are filled with the specified value.
![Right shift operator](https://scaler.com/topics/images/what-is-left-shift-operator-in-c-1.webp)
- Example:
```python
>>> 10 >> 1
5
>>> 10 >> 2
2
>>> 10 >> 3
1
```

- Left shift operator: The left shift operator shifts the bits of the number to the left by the number of bits specified. The leftmost bits are discarded and the rightmost bits are filled with the specified value.
![Left shift operator](https://i.ytimg.com/vi/BKzB6gdRyIM/maxresdefault.jpg)
- Example:
```python
>>> 10 << 1
20
>>> 10 << 2
40
>>> 10 << 3
80
```

5. Create a list containing int type data of length 15. Then write a code to check if 10 is present in the list or not.

Answer:

```python
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

if 10 in nums:
    print('10 is present in the list')
else:
    print('10 is not present in the list')

# Output:
# 10 is present in the list
```