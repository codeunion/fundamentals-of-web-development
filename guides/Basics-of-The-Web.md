The [web](http://glossary.codeunion.io/web) is an amazing piece of technology. It's tempting to think of the web as a magical resource that flies through the air to bring us adorable cat videos, but that's only part of the story.

In reality the web is system of well-designed [protocols](http://glossary.codeunion.io/protocol) and standards computers use to communicate with each other. The three key components are:

1. [The HTTP Request/Response Cycle](#understanding-the-http-request-response-cycle)
2. [Uniform Resource Locators (or URLs)](#understanding-urls)
3. [HyperText Markup Language (or HTML)](#understanding-html)

## Understanding the HTTP Request Response Cycle
The [HTTP](http://glossary.codeunion.io/http) [request response cycle](http://glossary.codeunion.io/request-response-cycle) is fundamental for every web application.

Every time we use a browser we send hundreds of requests and receive hundreds of responses. Every time we click a link or submit a form in our browser we create an [http request](http://glossary.codeunion.io/http-request) and send it to a server.

The server then sends a [response](http://glossary.codeunion.io/http-response) with [HTML](http://glossary.codeunion.io/data) and sends
it back to you. Once it's all back at your computer your browser interprets the HTML and presents it
as a web page.

### Making an HTTP Request from the Command Line
While browsers are a very common way for people to make HTTP requests and see responses; you can also send requests from the command line. This is very useful when building programs that communicate with [web APIs](http://glossary.codeunion.io/web-service).

Let's try this now! Open up your terminal, and run `curl --get http://codeunion.io/`. Look at that! You just requested CodeUnion's home page from the server and got a response with the HTML that makes up the page! Let's break this down word by word:

1. `curl` is the name of the program we used to make the HTTP request.
2. `--get` is an [option flag](http://glossary.codeunion.io/option-flag-cli) telling `curl` to make the request with the [HTTP GET method](http://glossary.codeunion.io/http-methods).
3. `http://codeunion.io/` is the [URL](http://glossary.codeunion.io/url) that we want `curl` to request. We pass the URL as an [argument](http://glossary.codeunion.io/argument-cli) to the `curl` program.

Using this power, you can now request any public website and see what it looks
like under the covers! Try it out! We'll wait for you!

### Making an HTTP Request with Ruby
You can also use Ruby to make HTTP Requests. This lets your program use [web services](http://glossary.codeunion.io/web-service) to accomplish tasks like checking someone else's calendar availability or posting a tweet. For now, we'll use Ruby's built-in [Net::HTTP](http://ruby-doc.org/stdlib-2.1.2/libdoc/net/http/rdoc/Net/HTTP.html#method-c-get) library to download the CodeUnion homepage.

Start an `irb` session and type the following:

```
require 'net/http'
home_page = Net::HTTP.get('codeunion.io', '/')
```

Bam! You now have the HTML that comprises CodeUnion's home page stored in the `home_page` variable. Maybe you can sell it on the black market.


## Understanding URLs

[URLs](http://glossary.codeunion.io/url) are everywhere! They're so common we may think we understand them by assimilation! While this is OK for a user of the web, web developers need a clearer picture of a
URL.

Take for example: `http://www.yelp.com/search?find_desc=tacos&find_loc=Downtown+Oakland%2C+Oakland%2C+CA#map-container`

This URL has 5 parts:

* The "scheme" `http://` - states which [protocol](http://glossary.codeunion.io/protocol) the URL uses. It is the
  first part of the URL and extends through the `://`
* The "domain" `www.yelp.com` - identifies the website you are on. It starts right after the `://` and ends at the first `/`
* The "path" `/search` - Tells the server which file you're looking for on the server. It starts with the first `/` after the domain and ends at the `?`
* The "query string" `find_desc=tacos&find_loc=Downtown+Oakland%2C+Oakland%2C+CA`  - This sends additional data to the server. It is a set of [key/value pairs](http://glossary.codeunion.io/keyvalue-pair) separated by the `&` character. It starts just right of the `?` and extends to the `#`.
* The `fragment` "#map-container" - This tells the browser to immediately scroll to the [HTML element](http://glossary.codeunion.io/element-html) that has an [id](http://glossary.codeunion.io/id-html) [attribute](http://glossary.codeunion.io/attribute-html) with the value "map-container"

### Special Characters in URLs
Let's look again at that Yelp URL: `http://www.yelp.com/search?find_desc=tacos&find_loc=Downtown+Oakland%2C+Oakland%2C+CA#map-container`

Notice how it contains odd strings like `%2C` and `+` where we would expect commas and spaces? URLs may only contain a [specific set of characters](http://stackoverflow.com/questions/1547899/which-characters-make-a-url-invalid/1547940#1547940). If we want to include any other characters in a URL, the characters must be [encoded](http://glossary.codeunion.io/encoding-and-decoding). In the Yelp example the `%2C` are URL encoded commas (`,`) and the plusses (`+`) are URL encoded spaces (` `).

#### Using Ruby to Encode and Decode URLs
Let's explore URL encoding and decoding with ruby's [URI.decode](http://www.ruby-doc.org/stdlib-2.1.1/libdoc/uri/rdoc/URI/Escape.html#method-i-decode):

Open an IRB session and try:

```
require 'uri'
URI.decode("http://www.yelp.com/search?find_desc=tacos&find_loc=Downtown+Oakland%2C+Oakland%2C+CA")
```

## Understanding HTML
[HTML](http://glossary.codeunion.io/html) is a markup language for documents. HTML documents are composed of [elements](http://glossary.codeunion.io/element-html) that describe their text.

Elements combine a [type](http://glossary.codeunion.io/element-html), [attributes](http://glossary.codeunion.io/tag-attribute), and [child](http://glossary.codeunion.io/parent-child-concept) elements, and opening and closing [tags](http://glossary.codeunion.io/tag-html). Here's an example of a simple HTML element:


```
<a href="http://google.com/">I'm a hyperlink!</a>
```

This HTML element is a [hyperlink](http://glossary.codeunion.io/hyperlink). We know that because it is an [`a` (or "anchor") element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a) with an [`href` attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#attr-href). The `href` attribute tells the browser where to take the user once the hyperlink is clicked. The `</a>` tag "closes" the hyperlink so it only contains the text "I'm a hyperlink"

Here's A full HTML document:

```
<!DOCTYPE html>
<head>
<title>Title of Page</title>
</head>
<body>
<h1>Title of Page</h1>
<p>Hey there I'm a paragraph! Below is an unordered list!</p>
<ul>
  <li>Hi!</li>
  <li>How are you?</li>
</body>
</html>
```

We open the html document with an opening [`html` tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/html) and declare the [doctype](http://stackoverflow.com/questions/7695044/what-does-doctype-html-do). Inside of this we put a [`head` element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/head) and a [`body` element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/body). The `head` contains a [`title` element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/title); while the `body` contains a [`h1`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/h1), a [`p`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/p), and a [`ul`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul).

The last thing we need to do is verify that the above HTML is valid. Valid HTML is more likely to work consistently across browsers and less likely to cause odd defects. Let's check if this is valid HTML by running it through the [html 5 validator](http://html5.validator.nu):

1. Open the validator in a new tab
1. Select "Text Field" from the drop down selector.
1. Copy the HTML from the code block above
1. Paste it into the text field
1. Click Validate

Uh oh! There are two errors! Thankfully these two errors are caused by the same thing. Try and fix the errors and re-validate.


## What's Next?
At this point, we should have a slightly-less-fuzzy mental model of URLs, the HTTP Request/Response cycle, and HTML from when you started reading. I would recommend playing around with these concepts in the [sinatra playground](https://github.com/codeunion/sinatra-playground).
