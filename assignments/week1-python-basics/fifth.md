# Assignment 5

1. What does an empty dictionary's code look like?

Answer: `{}`

Example:
```python
>>> a = {}
>>> type(a)
<class 'dict'>
```

2. What is the value of a dictionary value with the key 'foo' and the value 42?

Answer: `{'foo': 42}` will be the value of a dictionary value with the key 'foo' and the value 42.

Example:
```python
>>> a = {'foo': 42}
>>> a
{'foo': 42}
```

3. What is the most significant distinction between a dictionary and a list?

Answer:
- The items in a dictionary are unordered whereas the items in a list are ordered.
- The items in a dictionary are accessed using keys whereas the items in a list are accessed using indexes.

4. What happens if you try to access spam['foo'] if spam is {'bar': 100}?

Answer: `KeyError` exception will be raised if you try to access `spam['foo']` if `spam` is `{'bar': 100}`.

Example:
```python
>>> spam = {'bar': 100}
>>> spam['foo']
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>

KeyError: 'foo'

```

5. If a dictionary is stored in spam, what is the difference between the expressions 'cat' in spam and 'cat' in spam.keys()?

Answer: There is no difference between the expressions `'cat' in spam` and `'cat' in spam.keys()`. Both will return `True` if the key `'cat'` is present in the dictionary `spam`.

Example:
```python
>>> spam = {'cat': 1}
>>> 'cat' in spam
True
>>> 'cat' in spam.keys()
True
```

6. If a dictionary is stored in spam, what is the difference between the expressions 'cat' in spam and 'cat' in spam.values()?

Answer: `'cat' in spam` will return `True` if the key `'cat'` is present in the dictionary `spam`. Whereas `'cat' in spam.values()` will return `True` if the value `'cat'` is present in the dictionary `spam`.

Example:
```python
>>> spam = {'cat': 1}
>>> 'cat' in spam
True
>>> 'cat' in spam.values()
False
>>> 1 in spam.values()
True
```

7. What is a shortcut for the following code?
```python
if 'color' not in spam:
    spam['color'] = 'black'
```

Answer: `spam.setdefault('color', 'black')` is the shortcut for the above code. If the key `'color'` is not present in the dictionary `spam`, then it will set the value of the key `'color'` to `'black'`. 

Example:
```python
>>> spam = {'name': 'Krish', 'age': 5}
>>> spam.setdefault('color', 'black')
'black'
>>> spam
{'name': 'Krish', 'age': 5, 'color': 'black'}
```

8. How do you "pretty print" dictionary values using which module and function?

Answer: `pprint.pprint()` function from the `pprint` module is used to "pretty print" dictionary values. The use of `pprint.pprint()` function is demonstrated in the example below.

Example:
```python
>>> import pprint
>>> spam = {'name': 'Krish', 'age': 5}
>>> pprint.pprint(spam)
{'age': 5, 'name': 'Krish'}
```