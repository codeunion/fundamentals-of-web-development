# Fundamentals of Web Development

**January 27, 2015**

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
