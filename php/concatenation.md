# Concatenation in PHP

In PHP there are three string operators. Two concatenation operators and one concatenating assignment operator.

## Concatenation operators

### `'.'`

The first concatenation operator is `'.'`, which returns the concatenation of its right and left arguments.

```php
<?php
$first = 'Hello ';
$second = $first . 'World';
// Now $second contains 'Hello World'
```

### `{$variable}`

The second concatenation operator is `{$variable}`, which will insert the content of the variable between `{}` there you placed it.

Note that in order to use this concatenation operator you must use `""` and not `''`.

```php
<?php
$first = 'World';
$second = "Hello {$first}";
// Now $second contains 'Hello World'
```

## Concatenating assignment operator

### `.=`

The concatenating assignment operator `.=` appends the argument on the right side to the argument on the left side.

```php
<?php
$first = "Hello ";
$first .= "World";
// Now $first contains 'Hello World'
```