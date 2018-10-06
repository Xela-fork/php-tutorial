# Syntax

## Positionning PHP in a file

PHP can be put in standard HTML files, but those files' extensions should be changed to `.php`
(this extension will later be used by the server to know it must interpret any PHP inside the file).

PHP can also be put in standalone PHP files, without HTML.

To declare that some content of your file will be PHP, you must enclose your PHP code between `<?php` and `?>` tags.

When a file does only contain PHP, you should avoid closing the PHP tag with `?>`.

Example of PHP and HTML mixed content:

```html
<?php
// Some PHP code
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>My HTML page</title>
  </head>
  <body>
    <!-- Some HTML content -->
  </body>
</html>
```

Example of pure PHP file:

```php
<?php
// Some PHP code
```

## Comments

Comments are text blocks that are ignored by the PHP interpreter.

They're used to give informations to other developpers, and future you 😉

In PHP, single line comments use `//` to start the comment.
Multiple lines comments start with `/*` and end with `*/`.

```php
<?php
// Single ligne comment
some code // Comments can be found at the end of a line
/*
Here is
a multiline
comment
*/
```

Note that while the code should tell how, the comments should tell why.

## Semicolon

Most PHP lines will end with a `;`, just like full stop at the end of sentences.

People beginning development tends to often forget semicolons; you should try to remember them.

Here is the mandatory "Hello world" to show the use of what was presented in this chapter:

```php
<?php
echo 'hello, world'; // Note the ; at the end of the line, this code won't work without it
```
