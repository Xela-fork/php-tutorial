# Syntax

## Positionning PHP in a file

PHP can be put in standard HTML files, but extension should be change to `.php` (this extension can later be used by the server to know it must interpret PHP inside the file). PHP can also be put in standalone PHP files, without HTML.

To declare that some content of your file will be PHP, you can use `<?php` and `?>`. When a file does only contain PHP, you should avoid closing the PHP tag with `?>`.

Example of PHP and HTML mixed content:
{%ace edit=false, lang='php', theme='monokai'%}
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
{%endace%}

Example of pure PHP file:
{%ace edit=false, lang='php', theme='monokai'%}
<?php
// Some PHP code
{%endace%}

## Comments

Comments are text that are ignored by the PHP interpreter, they are used to give informations to other developpers, and future you 😉

In PHP, single line comments use `//` to start the comment. Multiple lines comments start with `/*` and end with `*/`

{%ace edit=false, lang='php', theme='monokai'%}
<?php
// Single ligne comment
some code // Comments can be found at the end of a line
/*
Here is
a multiline
comment
*/
{%endace%}

Note that code should tell how, comments should tell why.

## Semicolon

Most PHP lines will end with a `;`, just like full stop at the end of sentences. People beginning development tends to often forget semicolons, try to remember them.

Here are the mandatory "Hello world" to show the use of this:
{%ace edit=false, lang='php', theme='monokai'%}
<?php
echo 'hello, world'; // Note the ; at the end of the line, this code won't work without it
{%endace%}
