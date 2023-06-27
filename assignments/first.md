# Assignment 1

1. **In the below elements which of them are values or an expression? eg:- values can be integer or string and expressions will be mathematical operators.**
- `*`
- `'hello'`
- `-87.8`
- `-`
- `/`
- `+`
- `6`

Answer: 
- `*` - expression because it is a mathematical operator
- `'hello'` - value because it is a string
- `-87.8` - value because it is a float
- `-` - expression because it is a mathematical operator
- `/` - expression because it is a mathematical operator
- `+` - expression because it is a mathematical operator
- `6` - value because it is an integer


2. **What is the difference between string and variable?**

Answer: 
- String is a data type which is a sequence of characters and anything between double quotes `("")` or single quotes `('')` is called a string. It is immutable. Some examples of strings are `'hello'`, `'ineuron'`, `'123'`, `'1.23'`, `'@'`, `' '` etc.
- Variable is a name given to a memory location, something like box that hold our spices 🌶. It is mutable. Some examples of variables are `num = 123`, `company = 'ineuron'`, `pi = 3.14`, `symbol = '@'`, `space = ' '` etc.


3. **Describe three different data types.**

Answer:
- Integer - It is a data type which is a whole number. It can be positive or negative. Some examples of integers are `1`, `2`, `3`, `-1`, `-2`, `-3` etc.
- Float - It is a data type which is a decimal number. It can be positive or negative. Some examples of floats are `1.23`, `2.34`, `3.45`, `-1.23`, `-2.34`, `-3.45` etc.
- String - It is a data type which is a sequence of characters. It is immutable. Some examples of strings are `'hello'`, `'ineuron'`, `'123'`, `'1.23'`, `'@'`, `' '` etc.


4. **What is an expression made up of? What do all expressions do?**

Answer:
- An expression is made up of values and operators. All expressions evaluate to a single value. For example, `2 + 3` is an expression which evaluates to `5`.


5. **This assignment statements, like `spam = 10`. What is the difference between an expression and a statement?**

Answer:
- An expression evaluates to a single value.
- A statement does not evaluate to a single value.


6. **After running the following code, what does the variable bacon contain?**
```
bacon = 22
bacon + 1
```

Answer:
- 22
- Explanation: `bacon + 1` is an expression which evaluates to `23` but we are not assigning it to any variable. So, the value of bacon remains `22`.


7. **What should the values of the following two terms be?**
```
'spam' + 'spamspam'
'spam' * 3
```

Answer:
- `'spam' + 'spamspam'` : `'spamspamspam'`
- `'spam' * 3` : `'spamspamspam'`


8. **Why is eggs a valid variable name while 100 is invalid?**

Answer:
- Variable names cannot start with a number and hence `100` is invalid.


9. **What three functions can be used to get the integer, floating-point number, or string version of a value?**

Answer:
- int() for getting integer version of a value
- float() for getting floating-point number version of a value
- str() for getting string version of a value


10. **Why does this expression cause an error? How can you fix it?**
```
'I have eaten ' + 99 + ' burritos.'
```

Answer:
- The expression causes an error because we cannot concatenate a string with an integer.

- We can fix it by converting the integer to a string.
```
'I have eaten ' + str(99) + ' burritos.'
```