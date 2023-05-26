# Assignment 4

1. What exactly is []?

Answer: 
- `[]` (square brackets) are used to create a list.
- `[]` is an empty list. 

2. In a list of values stored in a variable called spam, how would you assign the value 'hello' as the third value? (Assume [2, 4, 6, 8, 10] are in spam.)

Answer:
```
spam[2] = 'hello'
```

Let's pretend the spam includes the list [a, b, c, d] for the next three queries.

3. What is the value of spam[int(int('3' * 2) / 11)]?

Answer: `d` will be printed. Because `int('3' * 2)` will be `33` as `3` is a string and `*` operator will repeat the string `3` two times. Then `33` will be divided by `11` which will give `3` and `spam[3]` will be `d`.

4. What is the value of spam[-1]?

Answer: `d` will be printed. Because `-1` is the index of the last element in the list.

5. What is the value of spam[:2]?

Answer: `['a', 'b']` will be printed. Because `spam[:2]` will print all the elements from index `0` to `1` (excluding `2`).

Let's pretend bacon has the list [3.14, 'cat,' 11, 'cat,' True] for the next three questions.

6. What is the value of bacon.index('cat')?

Answer: `1` will be printed. Because `bacon.index('cat')` will return the index of the first occurence of `cat` in the list.

7. How does `bacon.append(99)` change the look of the list value in bacon?

Answer: `bacon` will be `[3.14, 'cat', 11, 'cat', True, 99]`.

8. How does `bacon.remove('cat')` change the look of the list in bacon?

Answer: `bacon` will be `[3.14, 11, 'cat', True]`. It will remove the first occurence of `cat` from the list.

9. What are the list concatenation and list replication operators?

Answer: `+` is the list concatenation operator and `*` is the list replication operator.

Example:
```python
>>> a = [1, 2, 3]
>>> b = [4, 5, 6]
>>> a + b
[1, 2, 3, 4, 5, 6]
>>> a * 3
[1, 2, 3, 1, 2, 3, 1, 2, 3]
```

10. What is difference between the list methods append() and insert()?

Answer: `append()` method adds the element at the end of the list whereas `insert()` method adds the element at the specified index.

11. What are the two methods for removing items from a list?

Answer: 
- `remove()` and `pop()` are the two methods for removing items from a list. 
- `remove()` method removes the first occurence of the specified element from the list.
- `pop()` method removes the element at the specified index from the list.

12. Describe how list values and string values are identical.

Answer: 
- Both list and string values are ordered sequences of values.
- Both list and string values can be accessed using index.
- Both list and string values can be sliced.

13. What's the difference between tuples and lists?

Answer:

| Tuples | Lists |
| --- | --- |
| Tuples are immutable. | Lists are mutable. |
| Tuples are faster than lists. | Lists are slower than tuples. |
| Tuples are used to store heterogeneous data. | Lists are used to store homogeneous data. |
| Tuples are used to store data that will not be changed during the lifetime of the program. | Lists are used to store data that will be changed during the lifetime of the program. |

14. How do you type a tuple value that only contains the integer 42?

Answer: `(42,)` will be a tuple value that only contains the integer 42.

15. How do you get a list value's tuple form? How do you get a tuple value's list form?

Answer: `tuple()` and `list()` functions are used to get a list value's tuple form and a tuple value's list form respectively.

Example:
```python
>>> a = [1, 2, 3]
>>> tuple(a)
(1, 2, 3)
>>> b = (4, 5, 6)
>>> list(b)
[4, 5, 6]
```

16. Variables that "contain" list values are not necessarily lists themselves. Instead, what do they contain?

Answer: Variables that "contain" list values are references to list values. Because a list value is actually a reference to a list.

17. How do you distinguish between copy.copy() and copy.deepcopy()?

Answer:

| copy.copy() | copy.deepcopy() |
| --- | --- |
| It creates a shallow copy of the list. | It creates a deep copy of the list. |
| It copies the reference of the list. | It copies the list and all the nested lists. |
| It does not copy the nested lists. | It copies the nested lists. |