Here's a screenshot of Jesse's terminal on Mac OS X.

![Jesse's terminal](http://f.cl.ly/items/2k1c1k1R220u3u1L0d2b/Screen%20Shot%202014-06-10%20at%2010.09.44%20PM.png)

It probably differs from your terminal's appearance in a few keys ways, some of which are aesthetic and some of which are functional.  We'll describe below how to make these changes to your own terminal, if you want.

## Contents

1. [~/.bash_profile](#bash_profile)
2. [Improved "ls" Output](#improved-ls-output)
3. [Changing "ls" Colors](#changing-ls-colors)
4. [Terminal Theme](#terminal-theme)
5. [Shell Prompt](#shell-prompt)

## `~/.bash_profile`

A lot of what we need to do will involve adding lines to the `.bash_profile` file in your home directory.  This is a special file that is loaded every time you open a new terminal window.  This is where we set environmental variables, configuration options for our terminal, and so on.

Remember that files which start with `.` are "hidden" and you have to run `ls -a` to see them — the `-a` argument means "display all files."  We'll often reference this file as `~/.bash_profile`.  If you didn't know, `~` is short-hand for "your home directory."

**Note** Any time you make a change to `.bash_profile` you'll need to open a new terminal window (or tab) to see the changes.  This is because `.bash_profile` is only loaded at the start of a terminal session.

If the files doesn't exist, don't worry.

## Improved `ls` Output

Notice the output of `ls` in Jesse's terminal.  It's styled in a way that makes it *immediately* apparent whether we're looking at a file or directory.  Specifically,

1. Directories' names are displayed as a dark blue, normal files' names as plain white
2. Directories have a forward slash `/` appended to their names

In the same way that you can type `ls -l`, `ls -a`, etc. to change the output of `ls`, there are two command line flags you can use to enable this output.  Run this and see:

```bash
ls -FG
```

Huzzah!  The `-F` argument appends the special characters like `/` to the end of directory names and the `-G` argument colorized the output. We don't want to have to type `ls -FG` instead of `ls` every time, though.

### Making `ls -FG` The Default

We highly recommend making `ls -FG` the default behavior for `ls`.  If the colors look funny on your terminal, don't worry — we'll show you how to change those colors below.

To make `ls -FG` the default, you have to create what is called an `alias`.  This allows us to relabel existing commands (e.g., by giving them default arguments) or create shorter names for longer commands.  To create an alias, run this command (the *entire* thing):

```bash
echo "alias ls='ls -FG'" >> ~/.bash_profile
```

Yikes!  What this does is append the line `alias ls='ls -FG'` to the bottom of the `.bash_profile` file in your home directory (denoted by `~`).  The `echo` command is like `puts` in Ruby: it prints out a line to the terminal. The `>>` means "append the output of the left-hand side to the end of file on the right-hand side."

To make sure this took hold, open a new terminal window and type `ls`.  You should see colorized output.

## Changing `ls` Colors

If you like the colors that `ls` now has, you're free to keep them.  To use the colors you saw in Jesse's terminal, run the following command:

```bash
echo "export LSCOLORS=ExGxFxdxCxDxDxaccxaeex" >> ~/.bash_profile
```

The `LSCOLORS` environment variable determines what colors `ls` will display.  Again, I'm not 100% sure, but I believe each pair of letters `Ex`, `Gx`, etc. control the foreground and background colors for a particular type of file and each individual letter corresponds to a particular color.

If you'd like, you can use the [LSCOLORS Generator](http://geoff.greer.fm/lscolors/) to generate your own color scheme.  You'll want to use the "BSD LSCOLORS" value, not the "Linux LS_COLORS" value.

## Terminal Theme

Jesse uses a terminal theme called "IR_Black."  You can google around for it, or you can download it here: https://gist.github.com/jfarmer/bdef75589b17bfcf5e75/download

Download that file, uncompress it, and double-click the `IR_Black.terminal` file inside the new directory to import it into Terminal.app.  If you then open Terminal.app's preference dialog, you can set "IR_Black" to be the default theme.

## Shell Prompt

Jesse's shell prompt likely looks different from yours, too.  If you aren't familiar with the term "shell prompt," that's this bit of text:

```text
jesse@dewey ~ $
```

The appearance of your shell prompt is controlled by the `PS1` environment variable.  Run

```bash
echo $PS1
```

to see its current value.  If you want a plain-white version of Jesse's prompt, append this line to the bottom of your `~/.bash_profile`

```bash
export PS1='\u@\h \W \$ '
```

As you might guess, `\u` means "the current user", `\h` means "the current host" or the name of the current computer, `\W` means "the current working directory", and `\$` is the prompt itself.

**If you want the *colorized* version, append this line to the bottom of your `~/.bash_profile`**

> read the above carefully, you need to manually add the below line to your .bash_profile.

```bash
export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \W \$\[\033[00m\] '
```

Those crazy `\[\033[01:33m\]` codes describe the various colors.  You can play around with them to get different colors, if you'd like, or google "PS1 colors" for various guides.  I honestly can't tell you what each part of the color codes correspond to, although they control more than just text color.  You can also set the foreground color, make text bold, make text blink, and so on.

## Manually editing your .bash_profile

WATCH A SCREENCAST ON EDITING .bash_profile => **http://quick.as/8qb3s2zr**

1. Navigate to you home directory

  ```
    cd ~/
  ```
1. Open .bash profile in a text editor (with sublime on a mac)

  ```
    subl .bash_profile
  ```
1. Copy and paste the below line into the bottom of your bash profile

  ```
    export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \W \$\[\033[00m\] '
  ```

1. Save and close the file, then at the command line, tell unix to reload the configuration file

  ```
    source ~/.bash_profile
  ```
