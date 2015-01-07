## ```bundle install```

#### Have you seen the below?
![http://cl.ly/image/0R3R1y261d0h/Image%202014-07-24%20at%201.07.56%20PM.png](http://cl.ly/image/0R3R1y261d0h/Image%202014-07-24%20at%201.07.56%20PM.png)
#### Do you know the above pic is an error message?  Do you know what an error message is?

An error message is a type of feedback that your computer will display to you when you attempt to do something and for all kinds of reasons, your computer cannot do what you asked of it.  Error messages will contain lots of types of information.  Error messages will come in all shapes, colors and sizes.  Reading error messages and finding meaning, at first might seem like magic but will ultimately become a natural skill for you the developer.

This error message tells us,

``` `require`: cannot load such file -- dotenv ```

The error message further tells us that the error occurred when attempting to run line 2 in ```example.rb```

``` from example.rb:2 ```

> note example.rb:2  the :2 indicates the line number of the file it is attached to so in this case, we know that on line 2 of example.rb the ruby interpret found this error.

If we were to [check line 2 of example.rb][dotenv-project] we should find the below code.

```ruby
  require 'dotenv'
```

```require 'dotenv'``` is the ruby code used to include an external library of code.  The error message is telling us this external library cannot be found.

The solution to this is to install the necessary external code library by running ```bundle install```, which will install all external gem dependencies listed in a project's Gemfile.

```shel
  bundle install
```



**All professional grade projects should maintain their own GEM dependencies and you may find yourself frequently running ```bundle install```.  Anytime you see a require error, run ```bundle install```**

![http://cl.ly/image/0B1a0N0A2f3q/Image%202014-07-24%20at%201.33.52%20PM.png](http://cl.ly/image/0B1a0N0A2f3q/Image%202014-07-24%20at%201.33.52%20PM.png)

and then..

![http://cl.ly/image/3r0T3l0k2K1f/Image%202014-07-24%20at%201.34.27%20PM.png](http://cl.ly/image/3r0T3l0k2K1f/Image%202014-07-24%20at%201.34.27%20PM.png)

You might find that you get an error when you run ```bundle install``` something to the tune of:

```shell
  bash: bundle: command not found
```

If you get this error, relax, it is cause you don't have [bundler][bundler] installed.  To install bundler run:

```shell
  gem install bundler
```

Which should yield results similar to:

![http://cl.ly/image/3s0p212H052A/Image%202014-07-24%20at%201.23.34%20PM.png](http://cl.ly/image/3s0p212H052A/Image%202014-07-24%20at%201.23.34%20PM.png)


If you are using ```rbenv``` to manage ruby, you **MUST** also run:

```shell
  rbenv rehash
```

This will give ```rbenv``` access to bundler's unique commands.

Once you have bundler installed, you should be able to run ```bundle install``` inside a project's root directory and install all gem's required for that project.

#### Of course if smacks of gibberish <stuck@codeunion.io>

[dotenv-project]:https://github.com/codeunion/dotenv-example/blob/master/example.rb
[bundler]:http://bundler.io/
