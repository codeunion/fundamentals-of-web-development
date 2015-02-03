# Fundamentals of Web Development

**January 27, 2015**

Video: http://youtu.be/otbA10J8Jtw

## Broken Link Finder

We're going to write a Ruby script that will take a web page and find all broken links on that page.

Here's an example:

```shell-session
$ ruby broken_links.rb http://glossary.codeunion.io/
There are 42 links on http://glossary.codeunion.io/

3 of them are broken:
- http://glossary.codeunion.io/where-am-i
- http://glossary.codeunion.io/not-a-link
- http://glossary.codeunion.io/oh-phooey
```

To accomplish this, we'll be making use of Ruby's `Net::HTTP` module.

We're going to focus on **decomposition** and **modularity**, taking small steps towards a final solution and testing our code as we go.

### Results

We worked through a (very) rough implementation of this project. Used the [Net::HTTP](http://ruby-doc.org/stdlib-2.2.0/libdoc/net/http/rdoc/Net/HTTP.html) class to make HTTP requests on the internet.

The code can be found in the [broken_links](broken_links) folder.

If you're keen to keep going with it, there is a lot that could be done to clean this code up and make it better. Feel free to take it on as a side project if you're interested, and ask for feedback on what you build!

## ERB and Binding

At the start of the session, there were some questions about the [ERB](http://ruby-doc.org/stdlib-2.2.0/libdoc/erb/rdoc/ERB.html) module and the [Binding](http://www.ruby-doc.org/core-2.2.0/Binding.html) object.

After playing around with them a little (see the [erb_sandbox.rb](erb_sandbox.rb) and [binding_play.rb](binding_play.rb) files), we extracted some high-level understandings about how they work:

**ERB** is string interpolation with more advanced features. It is often used with "template" files that let you insert bits of Ruby into text.

**Binding** is an object that represents the _execution context_ for a given point in your code: you can think of it as a collection of all the variables, constants, and methods available in the current scope.
