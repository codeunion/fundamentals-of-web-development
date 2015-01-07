# Your Development Environment

## Contents

1. [Configuring Your Development Environment](#configuring-your-development-environment)
1. [Verifying Your Development Environment](#verifying-your-development-environment)
1. [Verifying Your Ruby Installation](#verifying-your-ruby-installation)
1. [Run Sublime Text from the Command Line](#sublime-text-from-the-command-line)
1. [Do you know how to...?](#do-you-know-how-to)


## Configuring Your Development Environment

We have our students use Sublime Text 3 (http://www.sublimetext.com/3), which works on both OS X and Windows.  Even if this isn't your preferred editor, we strongly encourage students to use it in order to reduce communication overhead.


We are expecting most of what gets said below to be a little overwhelming.  We are happy to do a screen-sharing session with you to get your computer set up ASAP.  If you want to try to go at it on your own, read below and feel free to shoot us any questions you might have.

Beyond that, it depends on what operating system you have.

### Installing Ruby on Max OS X

Be careful of online instructions, because when it comes to installing software like this, the specific steps can vary between versions of OS X.  For example, the steps in OS X 10.8 might be slightly different than those in OS X 10.9.  If something isn’t working, make sure you’re running the same version of OS X that the instructions are assuming.

If you’re using OS X, these instructions are good: https://gorails.com/setup/osx/10.9-mavericks

You only need to follow the “Installing Homebrew” and “Installing Ruby” steps.  Homebrew is a command-line tool for OS X to download and install other command-line software.  To use the command line on OS X you use the Terminal application, which comes with OS X.

### Installing Ruby on Windows

For Windows, you’ll need to go to http://rubyinstaller.org/downloads/ and download + install
Ruby 2.0.0-p481 under RubyInstaller — this is the Ruby interpreter and is what repl.it is running
The “Ruby Development Kit” for Ruby 2.0.0 under Development Kit
Each of these has a 32-bit and a 64-bit version.  The 32-bit versions should work regardless of what operating system you have, whereas the 64-bit versions will only work if you have a 64-bit version of Windows.  They’ll be faster if you do, though.

If you don’t know whether you have a 32-bit or 64-bit version of Windows, you can figure it out here: http://pcsupport.about.com/od/fixtheproblem/f/32-bit-64-bit-windows.htm

Once you’ve installed both of these, you should be able to open the Windows Command Prompt (http://windows.microsoft.com/en-us/windows-vista/open-a-command-prompt-window) and execute Ruby files you’ve saved.

## Verifying Your Development Environment

<a href="http://quick.as/5Bdeug21" target="_blank">
Click here to watch a screencast on verifying your development environment
<img src="http://cl.ly/image/2q1h3n110M2r/Image%202014-06-01%20at%206.33.58%20PM.png" target="_blank"></a>

Run the following commands, outlined in the screencast above, to verify that you have compatible versions of `ruby` and `git` installed.

- Ruby 1.9 +
  ```
    ruby -v
  ```

- Git Version 1.7+
  ```
    git --version
  ```

- Sublime (or some kind of text editor you can 'call' from the command line)
  ```
    sublime hello.rb
  ```

## Verifying Your Ruby Installation

If you follow all the above steps and nothing appears to have gone wrong, your setup might *still* be incomplete.  There are just too many variables at play to say for sure.  That means it's very important to not just install Ruby, but verify that the Ruby installation works as you (and we) expect.

### Verification Steps

Type (don't paste!) the following code into a text editor of your choice.  Remember: we *strongly* recommend [Sublime Text 3](http://www.sublimetext.com/3).

```ruby
puts "Let's count down from 15 to 5."

15.downto(5) do |i|
  puts i
end

puts "Whew! Glad we're done with that."
```

Save this file as `countdown.rb` in some directory (folder) on your computer.  Open the command line, use the `cd` command to change to the appropriate directory, and run this file by typing

```shell-command
$ ruby countdown.rb
```

The output should look identical to this: http://cl.ly/image/0r2l37443e3M

Note that the colors, fonts, and other bits of "window dressing" might look different on your computer.  The important thing is that you see the countdown from `15` to `1` displayed in your Terminal.

If something seems off, please — please please please — send an email to the cohort mailing list to ask for help.

## Sublime Text From the Command Line

To enable Sublime Text 3 from the command line we offer you two choices.

### Choice #1, More automated, easier at first, harder to debug.

  - Clone and follow all instructions https://github.com/codeunion/student-utils/tree/master/sublime-setup

### Choice #2, Less automated, harder at first, easier to debug.

  - Follow this relatively chunky but thorough step by step tutorial, [Command-Line-Sublime](Command-Line-Sublime)


## Do you know how to...?

- create a new ruby file
```
  touch hello.rb
```

- open and edit a file
```
  sublime hello.rb
```

- run a file
```
  ruby hello.rb
```

## Do you speak `GIT` ?

  **[Install Git on Mac/Windows/Linux][install-git]**

[install-git]:http://git-scm.com/book/en/Getting-Started-Installing-Git
