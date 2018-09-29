# Installation for local development

### Windows

If you are using Windows, you must go [here](https://windows.php.net/download/) and then choose the latest version of PHP (currently 7.2.10) and download the Zip archive choosing either 32 or 64 bits depending on your environment.

![Download page of PHP for Windows](/images/php-windows-download-page.png)
> Be sure to download the Zip and not the Debug pack or the source code.

Then you will extract the files in a folder of your choice, for example in a folder named PHP in appdata example : <code>%appdata%\PHP</code>. Then if you are using Windows 7 open the Control Panel and for Windows 10 it will be the "old" Control Panel.

![Old control panel](/images/w10-old-control-panel.png)

Then go to "**System**"
 
![System in control panel](/images/system-in-control-panel.png)

At the top left click on "**Advanced System Settings**"
 
![Advanced System Settings](/images/advanced-system-settings.png)

A new window will show up, there click on "**Environment variables**"

![Environment variables](/images/environment-variables.png)

Now, search for a variable named "**PATH**" and click "**Modify**"

![Path variable](/images/path-variable.png)

Then, a new window will show up and there click on "**New**" and add the path where you extracted the PHP files. For example <code>%appdata%\PHP</code> Then, click on "OK".

![Add the PHP files path into PATH variable](/images/add-php-files-path.png)

If the "**PATH**" variable doesn't exist, create it by clicking on "**New**" and put as variable name "**PATH**" and as value the PHP files path for example <code>%appdata%\PHP</code> and then click on "OK".

![Create PATH variable](/images/create-path-variable.png)

When you are finished, open a new command prompt if you have already opened one. Then run <code>php -v</code> and it should return a message similar to this one
<pre><code>PHP 7.2.10 (cli) (built: Sep 13 2018 04:07:33) ( NTS MSVC15 (Visual C++ 2017) x64 )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.2.0, Copyright (c) 1998-2018 Zend Technologies</code></pre>
If it doesn't then you made a mistake and you should re read the tutorial.

### MacOS
On MacOS however, the process is much easier. We will use [Homebrew](https://brew.sh/) which is a package manager for MacOS. 

In order to install Homebrew, you just have to enter this script in your terminal of choice.

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
> For more information about installing homebrew, please visit this [page](https://docs.brew.sh/Installation).

Then, verify the installation by running ``brew --version``.

Now that you have Homebrew installed, we should be able to install PHP. Simply run this command: ``brew install php72``. Just like in the Windows installation part, verify your installation by running ``php -v``. Great, PHP is now installed on your system!

### Internal server

Now, in order to launch the built-in PHP development server you can run <code>php -S localhost:4000</code> this will use the current directory as the root directory and it will be accessible at this address <code>http://localhost:4000/</code> altenartively you can change **localhost** to **0.0.0.0** which will make the server listen on all interfaces so on a device which is on the same network as the server you will be able to access it using the local IP. You can also modify php ini configuration with the <code>-d</code> flag for example to display the errors <code>-d display_errors=1</code> and in order to change the root directory you need to use the <code>-t</code> flag. Example <code>-t public/</code> will change the root directory to the <code>public</code> folder.