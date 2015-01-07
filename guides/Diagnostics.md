# Diagnostics

You try to run a command and you get an error messsage.  You try to connect to a database server and you get some cryptic error message about "sockets" (whatever those are). You try to install a [Ruby gem](Glossary#gem) and your computer bursts into flames.

When this happens — when your computer isn't behaving as you expect — you need to diagnose the problem.  But how?  Even if you knew what information you even needed to help diagnose the problem, how would you go about finding it?

## Your Development Environment

Because everything depends on your development environment being set up correctly, it's critical that you can sanity check this.  And _no_, just because you followed a list of instructions on some blog post and they appeared to work doesn't mean your environment is set up correctly.  How would you know?

### Diagnostic Questions

Here are questions about your environment you should know how to ask and answer.  They're going to be among the first questions anyone will ask you if something in your development environment isn't working as you expect.

- [What operating system (and version) are you running?](#what-operating-system-and-version-are-you-running)
- [What version of OS X are you running?](#what-version-of-os-x-are-you-running)
- [Is Homebrew installed?](#is-homebrew-installed)
- [Is Homebrew happy with your development environment?](#is-homebrew-happy-with-your-development-environment)
- [What version of Ruby are you running?](#what-version-of-ruby-are-you-running)
- [Do you have `rbenv` installed?](#do-you-have-rbenv-installed)
- [What versions of Ruby have you installed with `rbenv`?](#what-versions-of-ruby-have-you-installed-with-rbenv)
- [What command-line arguments does a particular program accept?](#what-command-line-arguments-does-a-particular-program-accept)

#### What operating system (and version) are you running?

Everything below is for OS X users, so if you're using Windows or Linux, that's _the most important detail_!  Make sure you also know the version, e.g., Windows 7 vs. Windows 8 vs. Windows 8.1.

If you're using Linux, you should know what distribution and version you're using. Some of the instructions below also apply to Linux but differ in a few details.

#### What version of OS X are you running?

On the command line, run

```bash
sw_vers
```

It should display something like the following:

```shell-session
jesse@dewey ~ $ sw_vers
ProductName:    Mac OS X
ProductVersion: 10.9.4
BuildVersion:   13E28
jesse@dewey ~ $
```

This tells us we're running OS X version 10.9.4.

#### Is Homebrew installed?

[Homebrew](http://brew.sh/) is the best way to install all the software you'll need to set up your development environment. To check whether it's installed, run this on the command line:

```bash
which brew
```

If Homebrew is installed, it should display the following

```shell-session
jesse@dewey ~ $ which brew
/usr/local/bin/brew
jesse@dewey ~ $
```

This tells us we have the `brew` command (from Homebrew) and that it's located in the directory `/usr/local/bin`.

#### Is Homebrew happy with your development environment?

Just because you've installed Homebrew doesn't mean your development environment is ready to go.  If you try to install something with Homebrew and it fails, for example, something is likely misconfigured in your development environment.  Fortunately, Homebrew comes with its own diagnostic tool.

Run this command to see what Homebrew thinks of your development environment (it might 30 seconds or so to run):

```bash
brew doctor
```

If everything is good, Homebrew will display

```shell-session
jesse@dewey ~ $ brew doctor
Your system is ready to brew.
jesse@dewey ~ $
```

If Homebrew thinks something is off about your development environment it will be abundantly clear: red text, warnings, error messages, and so on.

#### What version of Ruby are you running?

On the command line, run

```bash
ruby -v
```

As an example, this is the output I get when I run `ruby -v`:

```shell-session
jesse@dewey ~ $ ruby -v
ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-darwin13.0]
jesse@dewey ~ $
```

This tells us we're running 2.1.2p95.

#### Do you have `rbenv` installed?

We recommend students use [Homebrew and rbenv](https://gorails.com/setup/osx/10.9-mavericks) to manage their Ruby development environment.  Run this to see whether you have `rbenv` installed:

```bash
which rbenv
```

This should display

```shell-session
jesse@dewey ~ $ which rbenv
/usr/local/bin/rbenv
jesse@dewey ~ $
```

#### What versions of Ruby have you installed with `rbenv`?

Assuming `rbenv` is installed, run

```bash
rbenv versions
```

This should display something like the following

```shell-session
jesse@dewey ~ $ rbenv versions
  system
  1.9.3-p547
  2.1.1
* 2.1.2 (set by /Users/jesse/.ruby-version)
jesse@dewey ~ $
```

This is telling us that we have four versions of Ruby installed (the system version, 1.9.3-p547, 2.1.1, and 2.1.2).  Furthermore, the asterisk `*` is telling us that 2.1.2 is the currently active version.

#### What command-line arguments does a particular program accept?

In general, most command-line programs have some kind of "help" flag that will display information about how to run them.  You can typically see this by running the command with the `--help` or `-h` argument, like so

```text
brew --help
ruby --help
irb --help
gem --help
rbenv --help
```

and so on.
