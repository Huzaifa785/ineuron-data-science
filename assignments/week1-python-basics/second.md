# Assignment 2

1. What are the two values of the Boolean data type? How do you write them?

Answer: `True` and `False` are the two values of the Boolean data type. We write them as `True` and `False`.

2. What are the three different types of boolean operators?

Answer: The three different types of boolean operators are `AND`, `OR` and `NOT`.

3. Make a list of each Boolean operator's truth tables (i.e. every possible combination of Boolean values for the operator and what it evaluate ).

Answer:  

### AND Operator
| A   | B   | A AND B |
|-----|-----|---------|
| true  | true  | true      |
| true  | false | false     |
| false | true  | false     |
| false | false | false     |

### OR Operator
| A   | B   | A OR B  |
|-----|-----|---------|
| true  | true  | true      |
| true  | false | true      |
| false | true  | true      |
| false | false | false     |

### NOT Operator
| A   | NOT A |
|-----|-------|
| true  | false |
| false | true  |

### XOR Operator
| A   | B   | A XOR B |
|-----|-----|---------|
| true  | true  | false     |
| true  | false | true      |
| false | true  | true      |
| false | false | false     |


4. What are the values of the following expressions?
```
(5 > 4) and (3 == 5)
not (5 > 4)
(5 > 4) or (3 == 5)
```

Answer:
```
(5 > 4) and (3 == 5) : False, because 3 is not equal to 5 and the AND operator requires both the operands to be true.
not (5 > 4) : False, because 5 is greater than 4 and the NOT operator will return the opposite of the operand.
(5 > 4) or (3 == 5) : True, because 5 is greater than 4 and the OR operator requires only one of the operands to be true.
```

5. What are the six comparison operators?

Answer: The six comparison operators are:
- `==` : Equal to
- `!=` : Not equal to
- `>` : Greater than
- `<` : Less than
- `>=` : Greater than or equal to
- `<=` : Less than or equal to

6. How do you tell the difference between the equal to and assignment operators Describe a condition and when you would use one.

Answer: The equal to operator is `==` and the assignment operator is `=`. The equal to operator is used to compare two values whereas the assignment operator is used to assign a value to a variable. For example, `a = 10` is an assignment statement whereas `a == 10` is a comparison statement.

7. Identify the three blocks in this code:
```
spam = 0
if spam == 10:
    print('eggs')
    if spam > 5:
        print('bacon')
    else:
        print('ham')
    print('spam')
print('spam')
```

Answer: Very first let me explain what `block` means in python. So, you can simply consider blocks of code as paragraphs in essays and these blocks are based on the indentation. So, the three blocks in the above code are:

- BLOCK 1: everything inside the first if statement
```
    print('eggs')
    if spam > 5:
        print('bacon')
    else:
        print('ham')
    print('spam')
```
- BLOCK 2: statement inside the nested if
```
print('bacon')
```
- BLOCK 3: statement inside the nested else
```
print('ham')
```


8. Write code that prints Hello if 1 is stored in spam, prints Howdy if 2 is stored in spam, and prints Greetings! if anything else is stored in spam.

Answer:
```
if spam == 1:
    print('Hello')
elif spam == 2:
    print('Howdy')
else:
    print('Greetings!')
```

9. If your programme is stuck in an endless loop, what keys you’ll press?

Answer: `Ctrl + C`

10. How can you tell the difference between break and continue?

Answer: The break statement will stop the execution of the loop and the continue statement will skip the current iteration and continue with the next iteration.

11. In a for loop, what is the difference between range(10), range(0, 10), and range(0, 10, 1)?

Answer: There is no difference between range(10), range(0, 10) and range(0, 10, 1). They all will produce the same output. Because the default value of start is 0 and the default value of step is 1.

12. Write a short program that prints the numbers 1 to 10 using a for loop. Then write an equivalent program that prints the numbers 1 to 10 using a while loop.

Answer:
- Using for loop
```
for i in range(1, 11):
    print(i)
```
- Using while loop
```
i = 1
while i <= 10:
    print(i)
    i += 1
```

13. If you had a function named bacon() inside a module named spam, how would you call it after importing spam?

Answer: `spam.bacon()`