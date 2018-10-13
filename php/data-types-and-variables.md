# Data Types

### Booleans

This is the simplest type. A boolean expresses a truth value. It can be either `TRUE` or `FALSE`.

To specify a boolean literal, use the constants `TRUE` or `FALSE`. Both are case-insensitive.

```php
<?php
$bool = True;
// assign the value TRUE to $bool
?>
```

Typically, the result of an operator which returns a boolean value is passed on to a control structure. 

```php
<?php
// == is an operator which tests equality and returns a boolean
if ($do === 'show_hello_world') {
    echo 'Hello World';
}

// this is not necessary
if ($show_hello_world === TRUE) {
    echo 'Hello World';
}

// the code above is not necessary because this can be used with exactly the same meaning
if ($show_hello_world) {
    echo 'Hello World';
}
?>
```

For more information, click [here](http://php.net/manual/en/language.types.boolean.php).

### Integers

An integer is a number of the set ℤ = {..., -2, -1, 0, 1, 2, ...}.

Integers can be specified in decimal (base 10), hexadecimal (base 16), octal (base 8) or binary (base 2) notation. The negation operator can be used to denote a negative integer.

> **Note:** Binary integer literals are available since PHP 5.4.0.

To use octal notation, precede the number with a 0 (zero). To use hexadecimal notation precede the number with 0x. To use binary notation precede the number with 0b.

```php
<?php
$var = 42; // decimal number
$var = -42; // a negative number
$var = 052; // octal number (equivalent to 42 decimal)
$var = 0x2A; // hexadecimal number (equivalent to 42 decimal)
$var = 0b101010; // binary number (equivalent to 42 decimal)
?>
```

For more information, click [here](http://php.net/manual/en/language.types.integer.php).

### Floating point numbers

Floating point numbers also known as `floats`, `doubles`, or `real numbers` can be specified by 3 different syntaxes.

```php
<?php
$one = 4.2; 
$two = 6.9e2; 
$three = 3E-10;
?>
```

The size of a float is platform-dependent, although a maximum of approximately 1.8e308 with a precision of roughly 14 decimal digits is a common value (the 64 bit IEEE format).

For more information, click [here](http://php.net/manual/en/language.types.float.php).

### Strings

A string is series of characters, where a character is the same as a byte. This means that PHP only supports a 256-character set, and hence does not offer native Unicode support.

>  **Note:** As of PHP 7.0.0, there are no particular restrictions regarding the length of a string on 64-bit builds. On 32-bit builds and in earlier versions, a string can be as large as up to 2GB (2147483647 bytes maximum) 

A string literal can be specified in four different ways

- single quoted
- double quoted
- [heredoc syntax](http://php.net/manual/en/language.types.string.php#language.types.string.syntax.heredoc)
- [nowdoc syntax](http://php.net/manual/en/language.types.string.php#language.types.string.syntax.nowdoc)

#### Single quoted

The simplest way to specify a string is to enclose it in single quotes (`'` character). 

To specify a literal single quote, escape it with a backslash (`\`).

To specify a literal backslash, double it (`\\`).

All other instances of backslash will be treated as a literal backslash. This means that the other escape sequences you might be used to, such as \r or \n, will be output literally as specified rather than having any special meaning.

```php
<?php
echo 'some simple string';

echo 'you can also do new lines
like this.';

echo 'Hello i\'m fine';
// outputs : Hello i'm fine

echo 'My secret folder is in C:\Secret';
// outputs : My secret folder is in C:\Secret

echo 'My secret folder is in C:\\Secret';
// outputs : My secret folder is in C:\Secret

echo 'This \n is not a newline';
// outputs : This \n is not a newline

echo 'hello $world';
// outputs : hello $world
?>
```

> **Note:** Unlike the double-quoted and heredoc syntaxes, variables and escape sequences for special characters will not be expanded when they occur in single quoted strings. 

#### Double quoted

If the string is enclosed in double-quotes (`"` character), PHP will interpret the following escape sequences for special characters

**Sequence **|**Meaning**
:-----:|:-----:
\n |linefeed (LF or 0x0A (10) in ASCII)
\r |carriage return (CR or 0x0D (13) in ASCII)
\t |horizontal tab (HT or 0x09 (9) in ASCII)
\v |vertical tab (VT or 0x0B (11) in ASCII) (since PHP 5.2.5)
\e |escape (ESC or 0x1B (27) in ASCII) (since PHP 5.4.4)
\f |form feed (FF or 0x0C (12) in ASCII) (since PHP 5.2.5)
\\ |backslash
\$ |dollar sign
\" |double-quote
\[0-7]{1,3} |the sequence of characters matching the regular expression is a character in octal notation, which silently overflows to fit in a byte (e.g. "\400" === "\000")
\x[0-9A-Fa-f]{1,2} |the sequence of characters matching the regular expression is a character in hexadecimal notation
\u{[0-9A-Fa-f]+} |the sequence of characters matching the regular expression is a Unicode codepoint, which will be output to the string as that codepoint's UTF-8 representation (added in PHP 7.0.0) 

As in single quoted strings, escaping any other character will result in the backslash being printed too.

The most important feature of double-quoted strings is the fact that variable names will be expanded.

For more information, click [here](http://php.net/manual/en/language.types.string.php).

### Arrays & Objects

We will talk about arrays and objects later in the tutorial.

### NULL

The special `NULL` value represents a variable with no value, `NULL` is the only possible value of type null.

A variable is considered to be null if:

- it has been assigned the constant `NULL`
- it has not been set to any value yet
- it has been unset()

There is only one value of type null, and that is the case-insensitive constant `NULL`.

```php
<?php
$variable = NULL;       
?>
```

### Iterables

In PHP 7.1 the iterable pseudo-type has been introduced. It accepts any array or object implementing the Traversable interface, both of these types are iterable using foreach and can be used with yield from within a generator. 

Iterable can be used as a parameter type to indicate that a function requires a set of values, but does not care about the form of the value set since it will be used with foreach. If a value is not an array or instance of Traversable, a TypeError will be thrown. 

```php
<?php

function test(iterable $iterable) {
    foreach ($iterable as $value) {
        // ...
    } 
}

?>
```

Parameters declared as iterable may use `NULL` or an array as a default value.

```php
<?php

function test(iterable $iterable = []) {
    // ...
}

?>
```

# Variables

### What is a variable?

A variable is a container used to store information. For example a string, an integer, a boolean, etc. for example. We will talk about the different data types later.

The characteristic of a variable is to be able to vary, i.e. to be able to store different values over time.

In PHP, variables are only used to store information temporarily. More precisely, a variable will only exist during the execution of the script using it.

Thus, we will not be able to store information permanently with the variables (for this, we will use cookies, sessions or databases).

### Creating or declaring a variable – the theory

When you create a variable in PHP, you also say that you "declare" it.

A variable is a temporary storage space. Each new variable must have a unique name within a script to be able to differentiate it from the others and to be able to use it (except in the particular case where the variables do not have the same scope; a case we will discuss later).

We will be able to give any name to our variables, or at least almost.

First of all, it will be necessary to specify the dollar sign `$` before the name of a variable, to indicate that we will declare a variable.

Then, the name of a variable must not contain any spaces or special characters (accented characters, etc.). In addition, the name of a variable must begin either with a letter or possibly with an underscore `_` but not with a number.

In addition, note that the variables are case sensitive in PHP. This means that the variables `$example`, `$Example` and `$EXAMPLE` for example will be different.

Finally, be aware that there are ["reserved" names](https://secure.php.net/manual/en/reserved.keywords.php) in PHP. You cannot use these names as names for your variables, simply because the PHP language already uses them to designate different objects embedded in the language.

### Creating or declaring a variable – the practice

```php
<?php
$article = 'PHP Tutorial';
$price = 100;
$overpriced = true;
```

In the example above, we created two variables: `$article`, `$price` and `$overpriced`.

In the variable `$article`, we have stored the string `PHP Tutorial`.

In the second variable `$price`, we stored the integer `100`.

And in the third variable `$overpriced`, we stored the boolean `true`.

Note that you will need to use quotation marks or apostrophes to store a string of characters in a variable. On the other hand, you don't need it to store an integer, a bolean, etc.

NB: Quotation marks should only be used when you want to concatenate a string like this

```php
<?php
$message = 'Hello World';
$alert = "{$message} has been sent.";
```

Thus, the value of `$alert` will be `Hello World has been sent.`.

Here, you must understand that the equal sign is not the mathematical equal you know but an assignment operator; the value `100` is stored in the `$price` variable, but this variable is not equal to `100` in the mathematical sense of the term. Indeed, we will then be able to store other values in `$price` and thus delete the value previously stored.

If you have tried to display the result of this script in your browser, you will notice that the contents of our variables are not displayed.

This is quite normal. Remember that the variables are only containers. They are objects that are used to temporarily store information, nothing more.

To display the content of our variables, we will have to use the echo function.

`echo` output one or more strings.

`echo` is not actually a function (it is a language construct), so you are not required to use parentheses with it. `echo` (unlike some other language constructs) does not behave like a function, so it cannot always be used in the context of a function. Additionally, if you want to pass more than one parameter to `echo`, the parameters must not be enclosed within parentheses. 

### Display the content of a variable

```php
<?php
$article = 'PHP Tutorial';
$price = 100;
$overpriced = true;
echo $article;
```

Running this code will display the content of the `$article` variable which is `PHP Tutorial`.

### Modify the content of a variable

As mentioned above, the characteristic of a variable is to be able to change its value. Thus, it is possible to assign a new value to a variable.

In programming, this simple equal is called = an assignment operator. It is used to assign a value to a variable.

The "equal" in the mathematical sense of the term will be symbolized in PHP by the double sign equal == or === that we will study later.

For now, let's just change the value of our variables and display what they contain.

```php
<?php
$article = 'PHP Tutorial';
$price = 100;
$overpriced = true;
echo $price;
$price = 50;
echo $price;
```

This code will display `"100"`, then `"50"`.

To fully understand the above example, you should know that a script is read linearly, i.e. line by line, by the PHP interpreter.

Here, we start by declaring three variables, `$article`, `$price` and `$overpriced` in which we store respectively the values `"PHP Tutorial"`, `"100"` and `"true"`.

Then, the content of the variable `$price` is displayed for the first time.

Finally, we assign a new value to our variable `$price`. As you can see, to do this, you just have to rewrite our variable by changing the value behind the assignment operator. The new value `"overwrites"` the old one.

You can also use `-=`, `+=` `*=`, `**`, `/=` and `%=`

When we display the content of our variable `$price` again, it stores the value `"50"`, which is the value displayed second.
