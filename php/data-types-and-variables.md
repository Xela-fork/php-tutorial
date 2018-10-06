# Data Types

Comming soon.

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
$alert = "${$message} has been sent.";
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