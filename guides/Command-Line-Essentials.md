# Command Line Essentials

> Just enough samba steps to get you dancing.

The **command line** or **command line interface** (often abbreviated **CLI**) is a text-only way of browsing and interacting with your computer.  Instead of representing files and folders graphically and manipulating them with the mouse, everything is represented textually and all actions are input via the keyboard.

When you're programming, most of the time outside your text editor will be spent on the command line, so it's important you develop a base level of proficiency.

On Mac OS X, you can access the command line by running [Terminal.app][terminal-app-wiki]. On Windows, you can access it by running [Windows PowerShell][power-shell-wiki].

Below is a list of a few, essential commands, how to use those commands, and how to communicate with other people about those commands.  All three are important to help you orient yourself and others while inside the command line interface.

## Understanding the Command Line

The most important thing to understand while on the command line is that you're always "inside" a folder (or *directory* as they're called in this context).  This is no different than when you double-click a folder on your desktop and new window opens, displaying that folder's contents.  Once inside that first folder, you can open new folders, go to a specific folder, go backwards in your browsing history, and so on.

The command line is no different in this regard, except that you're always — *always* — inside a directory.  Whatever directory you happen to be in is called the **working directory**.  You might also hear the phrases **current directory**, **current working directory**, or **present working directory**, which are all synonymous with "working directory".

## A Few Essential Commands

In every case, you run a command by typing the appropriate characters into your terminal and hitting enter.  One thing beginners commonly find frustrating is that many essential commands have short, opaque names like `mv`, `cp`, `cd`, and so on.  If you feel frustrated, you're not alone!



<a href="http://quick.as/XRB8FrJv" target="_blank">
Click here to watch a brief screencast on these commands.
<img src="http://cl.ly/image/0g1G1a2H3m3i/Image%202014-06-01%20at%202.22.19%20PM.png" target="_blank">
</a>


- `pwd`

  The `pwd` command prints out the current working directory

- `ls`

  The `ls` command prints out (or "lists") the contents of the current directory

- ```ls -a```

  `ls -a` prints out *all* the files in the current directory, including files marked as "hidden"

- ```ls -al```

  `ls -al` prints out *all* the files in the current directory in "long format", which includes information like file size, creation time, and so on.

- ```cd my_photos```

  The `cd` command is used to change the current directory to whatever directory you specifiy (`my_photos` in this case).

- ```cd ..```

  `cd ..` used to navigate to one level up in the directory structure, to the so-called "parent" directory.

- ```cd ~```

  `cd ~` will change the current directory to your home directory.  On Mac OS X, Linux, and similar operating systems, `~` is short-hand for "the current user's home directory".

- ```mkdir new_project```

  `mkdir` creates a new directory, in this case one named `new_project`

- ```ruby hello_world.rb```

  The `ruby` command is the standard Ruby interpreter, which we use to execute our Ruby programs.  In this case, we're telling the Ruby interpreter to load the contents of the file `hello_world.rb` and run the program contained inside.

## Happy Coding :)

[terminal-app-wiki]:http://en.wikipedia.org/wiki/Terminal_(OS_X)
[power-shell-wiki]:http://en.wikipedia.org/wiki/Windows_PowerShell
