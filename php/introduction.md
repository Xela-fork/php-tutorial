# Definition and role of PHP

PHP is the abbreviation for "PHP Hypertext Preprocessor". The first "P" in PHP is indeed the abbreviation of "PhP", a curiosity that is not very important to us.

Unlike HTML or CSS languages that run on the client side, i.e. in your visitors' browser itself, PHP will run on the server side. We will explain this notion later on.

For now, remember that we will be able, thanks to PHP, to create dynamic and interactive sites. For example, we will be able to load a different page for each visitor requesting access to a URL.

To illustrate this, you can remember the example of a customer space on a website: when a visitor provides his information (usually a nickname and password), he can enter his customer space.

The page corresponding to a visitor's customer space was therefore generated especially for this visitor, at his request. This will be possible using PHP.

To do this, we generally distinguish two types of websites: "static" and "dynamic".

The so-called static sites are characterized by the fact that they do not have the ability to adapt to visitors: each of their pages will be exactly the same, regardless of the user accessing them. With HTML and CSS, you can only create static sites.

Dynamic sites, on the other hand, will be able to load different pages for each visitor or according to different constraints. To create dynamic sites, we will be able to use PHP (and a database).

# Understanding the client-server relationship

Understanding the difference between a client and a server, as well as their role and relationship, will greatly help you in understanding the utility of PHP and at which level PHP acts.

Let's start by talking about the Web. The Web is a global network of interconnected machines.

To be able to understand each other, all these machines must speak the same language, i.e. use the same protocol.

Thus, the Web is based on the HTTP protocol, for HyperText Transfer Protocol.

To use the HTTP protocol, we will have to use a web browser (Chrome, Firefox, Safari, Opera, Brave, Edge, etc.).

When you request access to a web page, you go through a browser, which uses the HTTP protocol.

What is happening is finally quite simple: we start by typing an address as a URL in our browser. When you ask to access a web page, you are placed as a customer.

Then, the browser searches for the server hosting the requested page. To do this, it will use a DNS service (Domain Name Server), which are servers used to associate a domain name (learndev.info for example) with a single IP address.

As soon as the IP address is found, the web browser sends a request to the server corresponding to the IP. In other words, it asks the server to provide it with the requested web page.

When the server receives the request, it immediately searches for the requested file, retrieves its content, and then sends it back to the browser.

A server is like a normal computer but it works 24/7 (in theory), and can be more powerful than our computers, though this is not always the case.

A server has certain specific software and its role is to store all kinds of media composing the sites (files, images, etc.), and to make them accessible to any user at any time, wherever they are.

Depending on the type of file requested by the client (HTML file, PHP file, etc.) the server will not proceed in the same way.

Indeed, in the case of an HTML file for example, the server simply retrieves the file and sends it back to the browser as it is, which will then interpret it. This is why we say that HTML is a "client-side" language, i.e. a language that runs on the client side.

On the other hand, if you ask the server to access a PHP page, one more step will be necessary. Indeed, you must understand that your web browser cannot read PHP code. This must be interpreted beforehand.

Here's what happens in this case: the server retrieves the PHP file, then uses an interpreter to execute the PHP code and return only the result (generally as HTML code, and possibly CSS). Once the result is obtained, the server sends it back to the browser, which should display it without any problem.

With that, you can understand that each time a user requests access to a PHP file, the server will have to interpret this file. This is why we will be able to send a different file for each user.

# Why use PHP?

Unlike HTML and CSS, which are true standards, PHP has many competitors, including Python (with Flask and Django frameworks), Ruby (with Ruby on Rails framework), or NodeJS (with e.g. ExpressJs or AdonisJs).

There is no particular advantage over other languages, NodeJS or Python would work just as well, but PHP is very popular.

Finally, PHP stands out for its performance and solidity:
as the language is Open Source, anyone can contribute to its evolution,
which means that it is constantly improved and won't probably be abandoned.

In addition, PHP has good execution performance in terms of speed and is a secure language:
the few vulnerabilities ever detected in the language have always been fixed within 24 hours.
