## Glossary of Terms
This is a comprehensive series of short, precise, and accurate unofficial
definitions of terms you'll experience this week. It can only create a surface
level understanding.

Memorizing strongly discouraged. Referencing strongly encouraged.

#### A

##### Absolute Path
In the context of an OS (\*nix, Windows), an absolute (or full) path is one that points to the same location on the file system regardless of the present working directory, e.g. `/Users/sandra/Documents/homework.txt`.

In the context of the web, an absolute path is synonymous with the [URL](#url). At the least, it includes the _protocol_, _domain_, and a _path_ to a file or resource, for example: `http://www.sandra.me/homework/history.html`. In this example, `http` is the protocol, `www.sandra.me` is the host, and `/homework/history.html` is the path.

##### Access Token
An Access Token, sometimes called a "User Token", is created when a user logs
into an application using [OAuth](#OAuth). It is unique on a
per-user-per-application basis. An Access Token can be shared publicly without
risk. Think of them as the "username" for OAuth's
[Authentication](#authentication).

##### Access Token Secret
An Access Token Secret, sometimes called a "User Secret", is created when a user
logs into an application using [OAuth](#OAuth). Access Token Secrets are unique
on a per-user-per-application basis. You should never share a users Access Token
Secret, as they are the "password" of OAuth's [Authentication](#authentication).

##### Authentication
Authentication is how an application identifies you. At the user level, this is
often by using a  username/password combination. At the application level, this
is often using an API Key and a shared secret.

Not to be confused with [Authorization](#authorization).

##### Authorization
Authorization is how an application decides what someone is allowed to do. For
instance; you may be allowed to deposit money into any bank account; but you can
only withdraw money from your own. Authorization is usually dependent on valid
[Authentication](#authentication).


##### Authorization Context
The Twitter API allows your application to work in two contexts: the application
context and the user context.

* The Application context identifies which application is making each request
  using a [Consumer Key](#consumer-key) and a [Consumer Secret](#consumer-secret)
* The User context identifies which user is making each request using an [Access
  Token](#access-token) and [Access Token Secret](#access-token-secret)

These 4 pieces of [data](#data) are used to create the [Authorization
header](#headers) that is part of an [OAuth](#oauth) [request](#request).

##### Application Framework
An application framework is a [gem](#gem) designed to make it easy to build an application. Often application frameworks are collections of many [libraries](#library) and have strong opinions about how to structure your application. Popular frameworks are often well documented, have tons of plugins or extensions, and take a while to learn.

Not to be confused with [libraries](#library)


##### API (Application Programmable Interface)
An API is a way to expose parts of a program so other programs may use it.

APIs can be built on the [Web](#web) as [Web
Services](#web-services-or-web-apis) or they can be programs running on your
computer.

An example of an API for a program are browser plugins. Plugins such as [Hey
Girl](https://chrome.google.com/webstore/detail/hey-girl/jcpmmhaffdebnmkjelaohgjmndeongip)
and [Mustachio
Redux](https://chrome.google.com/webstore/detail/mustachio-redux/hbnnipmnpgiepegnlmekieblhjmchmbf)
use the browsers api to change pictures as you browse the web.

##### Attribute (HTML)
[Metadata](#metadata) which provides more information about an [element](#element-html). Represented as [key-value pairs](#keyvalue-pair-concept)


#### B

##### Browser
A web browser is a tool for navigating the [web][#web]. It provides a convenient user interface for sending [requests](#request) to a [web server](#server), parsing the [response](#response], and presenting it to the user.

#### C

##### Column (Databases)
A `column` defines the name and [datatype](#datatype) of a piece of [data](#data) in a [row](#row-databases). These are traditionally the "headers" on a spreadsheet; with the added benefit of telling you what kind of data can be stored in them.

##### Class
A class is a definition of a data type. It tells you what methods you can call on a variables. If you look at [the rubydoc of the `String` class](http://ruby-doc.org/core-2.1.2/String.html) you'll see a list of methods on the left hand side of the page. The methods that you can call on variables which are a `String` are prefixed with `#`. These are called "instance variables".

##### Client
A client is a piece of software that sends [data](#data) to a [server](#server). Many apps are actually clients of a [web service](#web-service-or-web-api).

##### Client/Server Model
The [client](#client)/[server](#server) model is a common approach to sharing [data](#data) between many
programs.

The server is responsible for storing data and ensuring the client only
interacts with the data it's allowed to, and the client is responsible for
handling the user interactions.

Both the client and server must use the same [protocol](#protocol).

##### Consumer Key
A Consumer Key, sometimes called an API Key, is used to
identify your application when sending
[requests](#request) to a [web service](#web-service-or-web-api) that uses
[OAuth](#oauth). Consumer keys are generated when you register your application
with the web api. Consumer Keys may be shared publicly; as they are analogous to
a username when using OAuth for [authentication](#authentication).

##### Consumer Secret
A Consumer secret, sometimes called an API Secret, is used to
identify your application when sending
[requests](#request) to a [web service](#web-service-or-web-api) that uses
[OAuth](#oauth). Consumer secrets are generated when you register your application
with the web api. You should not share consumer secrets publicly; as they are analogous to
a password when using OAuth for [authentication](#authentication).

#### D

##### Data
Data is a hard concept to explain. Think of it as the value of a variable. Take
the following code:

```ruby
name="Zee"
beard_length=9001
skills=[:programming, :typing, :sleeping, :grumping]
```

The data contained in `name` is the string "Zee". The data contained in the
variable `skills` is an array of 4 symbols. Data can be transformed into
different [formats](#data-formats) through the process of
[encoding](#encoding-and-decoding)

##### Database
A database is a way to store structured data for retrieval. You could think of a CSV as a very primitive `database`. Databases are how programs persist data between runs and/or page requests.


##### Data Formats

Data formats are how you can represent data to either a person or program. CSV's
are a type of data format designed to represent spreadsheets.
[JSON](#json-javascript-object-notation) is another common data format for
transferring data between programs over the [Internet](#internet). HTML is a
data format for presenting data in a human readable way in a browser.

##### Datatypes

Datatypes tell you what kind of data a variable holds. The `String` data type holds characters, the `Array` datatype is a list of other datatypes, a `Hash` datatype is a set of key value pairs. In ruby, Datatypes are determined by the [`class`](#class) of the variable:

```ruby
puts "hi".class
puts 5.class
puts [1,2,3].class
puts { :hi => "Ya'll" }.class
```
##### Dotenv

We're using the `dotenv` [gem](#gem-library) to store sensitive information like
your Twitter [consumer secret](#consumer-secret). This lets us use the line
`Dotenv.load ".env"` to add the key-value pairs to the global `ENV` hash. Often
used with [.gitignore](#gitignore) to prevent storing sensitive data in your git
repository repository.

See [https://github.com/codeunion/dotenv-example](https://github.com/codeunion/dotenv-example)
for a guide on how to use dotenv to manage sensitive information.

#### E

##### Encoding and Decoding
Encoding is the process of turning [data](#data) from one form to another.
I've encoded an important message: "Ogrammingpray isay awesomeay." Your brain
has probably "decoded" this message into "Programming is awesome." Encoding
allows you to put data into a [format](#data-formats) that other programs can read.


##### Encryption
Encryption is a form of [encoding](#encoding-and-decoding) [data](#data) so it
is only readable by parties who are allowed to read it. It's often used for
[HTTP requests](#request) that carry credit card or password data.

#### F
##### Form (Web)
Web forms collect data from a user. They may contain many [input fields](#input-field-html). A forms `action` [attribute](#attribute-html) states which [URL](#url-uniform-resource-locator) the browser will [request](#request) when the form is submitted. The `method` attribute states which [request method](#http-method) will be used in the request and where the input field data will be stored:

* GET - Input field data is sent in the url as [query variables](#query-variable)
* POST - Input field data is sent in the body of the request.

#### G

##### Gem
Gems are how code is packaged and distributed for others to use in ruby. Relying on a gem to do some of the work of your application makes it easy to solve hard problems.

When you want to use a gem in your project add it to your `Gemfile`. Then run `bundle install` and voila!

##### .gitignore
The `.gitignore` file tells Git *not* to include a file in a given repository.
It's a list of files and patterns that match files to exclude when you run `git
add`.

#### H


##### Headers
Every HTTP [Request](#request) and [Response](#response) has
[metadata](#metadata) attached to it. This week, only a few [
headers](https://en.wikipedia.org/wiki/List_of_HTTP_headers#Request_Headers) are
likely to be important:
* [Authorization](#authorization) - Identifies the sender of the request to the web serice
* Content-Type - States the [data format](#data-format) of the request or
  response body.

##### Heroku
Heroku is a service to [serve](#server-web) web applications for others to visit. It is free, but you may want to pay for upgrades until you get popular :smile:.

##### HTML (HyperText Markup Language)
HTML is a hierarchical, human-friendly [markup language](#markup-language) for [the Web](#web). Plain text is "marked up" with semantic [elements](#element-html) that provide meaning, such as `<p>` for paragraph or `<h1>` for the primary header on a page. HTML is frequently presented to a user in a [web browsers](#browser-web); though some desktop and mobile applications use HTML for their [user interface](#user-interface).

##### HTTP (HyperText Transfer Protocol)
A [protocol](#protocol) used to transmit data on [the Web](#web). It is
[client-server](#client-server-model) based and built on top of the [Internet
Protocol](#ip-internet-protocol). HTTPS is an alternative protocol used to transfer
data securely using [encryption](#encryption).


##### HTTP Methods
There are four main "verbs" used in [web services](#web-services-or-web-apis):
* GET - Retrieves data from the service
* POST - Adds data to the service
* PUT - Replaces data in the service
* DELETE - Removes data from the service

Every [HTTP Request](#request) uses one of these verbs in conjunction with
a [URL](#url-uniform-resource-locator) to change [data](#data) in the web
service.

##### Hyperlink (HTML)
A clickable [element](#element-html) that tells the browser to navigate via the [`GET` HTTP method](#http-methods) to the [url](#url-uniform-resource-locator) in its `href` [attribute](#attribute-html).

#### I

##### Input Field (HTML)
An input field is used to collect data from a user within a [web form](#form-web). There are [many different kinds of input fields](http://nativeformelements.com/). When a form is submitted, An input fields `name` [attribute](#attribute-html) becomes the key of the [`params` hash](#params-sinatra) and its data becomes the value stored at that key.

##### Insert (SQL)
`INSERT` [queries](#query-databases) are used to add [rows](#row-databases) of [data](#data) into a [table](#table-databases). Syntax: `INSERT INTO people (name, age, birth_date) VALUES ("Zee", 12, "2002-12-25");`


##### Instance (OO)
An `instance` is used to describe a variable or value created from a [class](#class). Instances may use any [instance methods](#instance-method) or [instance variables](#instance-variable) their class provided. Here the variable `so_many_his` is an instance of the `Array` class:
```
so_many_his = Array.new(10, "hi!")
puts so_many_his.class
```

##### Instance Method
An instance method is a method available to any [instances](#instance-oo) of a given [class](#class). They are defined within a class using `def`. Documentation uses the `#` to indicate an instance method; i.e. [`Array#map`](http://www.ruby-doc.org/core-2.1.2/Array.html)

##### Instance Variable
An instance variable is [data](#data) stored within an [instance](#instance-oo) of a class. It is prefixed with an `@`. Instance variables are only reference-able within [instance methods](#instance-method).

##### Internet
The Internet is used to describe all of the different services like email,
websites, chat, games, etc. that communicate over the [Internet
Protocol](#internet-protocol).

##### IP (Internet Protocol)
The Internet Protocol is a [protocol](#protocol) that defines how computers on
the [Internet](#internet) send [packets](#packets) of information.
websites, chat, etc. that communicate over the [Internet
Protocol](#ip-internet-protocol).


#### J

##### JSON (JavaScript Object Notation)
JSON is a very common [data format](#data-format) used in [web
services](#web-service-or-web-api). It is very human readable, and supported in many
languages. The following is supermans hero information in a ruby hash and the
JSON equivalent:

```ruby
{
  :alias => "Superman",
  :name => "Clark Kent",
  :years_active => 60,
  :powers => ["flight", "xray_vision", "heat_vision", "invincibility"]
}
```
now in JSON
```json
{
  "alias": "Superman",
  "name": "Clark Kent",
  "years_active": 60,
  "powers": ["flight", "xray_vision", "heat_vision", "invincibility"]
}
```

#### K

##### Key/Value Pair (Concept)
A Key/Value pair is a way to connect [data](#data) with human friendly names. Often key-value pairs are held within a container. Key value pairs are used everywhere in programming.

* `first_name = "Zee"` - Defines a ruby variable named `first_name` with the value `"Zee"`. The key in this case is `first_name`.
* `{ :first_name => "Zee", :last_name => "Spencer" }` - Defines a ruby [hash](#hash-map-datatype) which contains two key value pairs: key `:first_name` with value "Zee"  and key `:lastname` with value "Spencer".
* `<a href="http://google.com">Search!</a>` - Defines an HTML link which contains a key `href` with the value `"http://google.com"`.

#### L

##### Library
A library is a [gem](#gem) that solves a very specific problem. For instance "How do I make [HTTP requests](#request) [in ruby](https://github.com/excon/excon)?" or "How can I generate the HTTP [authorization](#authorization) [headers](#headers) for [OAuth](#oauth) [in ruby](https://github.com/laserlemon/simple_oauth). Libraries are easy to learn because they do only one thing.

Not to be confused with [frameworks](#application-framework).


#### M
##### Metadata
A type of [data](#data) which provides additional information about something.

##### Model (MVC)
A model is a [class](#class) that represents a [database table]. [Instances](#instance) of the model represent [rows](#row-databases) of the table.

#### O

##### OAuth

OAuth is a [protocol](#protocol) built on top of
[http](#http-hypertext-transfer-protocol) to allow [client
applications](#client-server-model) to access a users data without needing to
store their password. You will use the [authorization
header](http://oauth.net/core/1.0/#auth_header) to provide the twitter
[web-service](#web-service-or-web-api) with the appropriate [user context](#authorization).

#### P

##### Params (Sinatra)
Sinatra provides a hash of data from an http request in a helper method named `params`. `Params`  gets its [key-value pairs](#keyvalue-pair) from [forms](#form-web), url [named parameters](http://ruby.about.com/od/sinatra/ss/sinatra3_4.htm), or url [query variables](#query-variable)

##### Protocol
Protocols define how computers communicate. There is a wide ecosystem of
protocols, each with different purposes. They are often specified using a
[Request for Comment](#rfc-request-for-comment). There are many kinds of
protocols with different purposes. SMTP, POP and IMAP are all for email;
[HTTP](#http-hypertext-transfer-protocol) is for web pages; Jabber (or XMPP) is
for chat, and many many more. Don't worry about learning the protocols details
at the moment.

#### Q

##### Query (Databases)
A `query` is a [sql](#sql-structured-query-language) instruction sent to a [relational database](#relational-database). Queries allow your program to use [data](#data) stored in a database.

##### Query Variables
Query variables are used to pass [data](#data) to the server in an [HTTP
Request](#request). They are part of a [URL](#url-uniform-reseource-locator)
that comes after the `?`; and follow the format
`name=value&other_name=other_value`.

#### R

##### Relational Databases
Relational databases are built on the premise that data is useful primarily in how it relates to other data. A "reasonable" mental model for relational databases are like a spreadsheet. They have [tables](#table-databases); which have [columns](#columns-databases) that describe the kind of data in the table, and [rows](#rows-databases) for each data entry. The relationship between tables is preserved with [keys](#keys-databases) that reference other tables.

##### Relative Path
In contrast to the [absolute path](#absolute-path) of a resource, the relative path points to a resource (or a file if on a file system) relative to the current location (the URL of the page being viewed, if on the web, or the current working directory, if in a file system). This is useful if you don't want or need to provide a full [URL](#url) to link to a resource on your site.

For example, if you want to link to a CSS file from your web page, you could include a `<link>` tag with an `href` value pointing to the CSS file, like this: `<link rel="stylesheet" href="/styles/global.css">`. This is a relative path because it assumes that the page linking to this CSS file is located in the same directory as the `styles` directory, which contains the file `global.css`.

##### Resource (Web)
Given [HTTP Methods](#http-methods) are the "verbs" of the web,
resources are the "nouns". A resource is identified by a
[url](#url-uniform-resource-locator);

##### Response
HTTP Responses are returned from the [web service](#web-service-or-web-api) to the
[client](#client-server-model) who sent the [request](#request). Responses are
composed of a [status code](#status-codes), some [headers](#headers), and a
body that contains [data](#data).

##### Request
HTTP requests are one half of the [Request/Response Cycle](#request-response-cycle).
Requests are composed of a [method](#http-methods), a
[URL](#url-uniform-resource-locator), [headers](#headers), and sometimes
a body.

##### Request/Response Cycle
HTTP works by connecting the client and [web service](#web-service-or-web-api) for a single
transaction.

The [client](#client-server-model) sends a [request](#request) to the server for
processing. Once the server finishes it creates a [response](#response) and
sends it back to the client.


##### RFC (Request For Comment)
RFCs are public documents outlining a standard in the technology industry. While
exhaustive and academic, they provide all the information necessary to implement
a standard. They are often used for reference.

[RFC 2616](http://www.faqs.org/rfcs/rfc2616.html) exhaustively documents how to
implement [HTTP](#http-hypertext-transfer-protocol). Don't worry, it's only 147
pages!

A more readable one is [RFC4180](https://www.rfc-editor.org/rfc/rfc4180.txt)
which specifies how to format CSV files in a mere 7 pages.

Not all RFC's are computer focused, [RFC
2119](https://www.ietf.org/rfc/rfc2119.txt) is an RFC for people who write RFCs!

##### Row (Databases)
A database `row` is a single record stored in a [table](#table-databases). It's roughly analogous to a row in a spreadsheet.

##### Route (Sinatra)
[Sinatra](#sinatra) uses routes to define what code will be executed when an [http request](#request) comes to a given path with a given [HTTP verb](#http-methods). [Official Docs](http://www.sinatrarb.com/intro.html#Routes).

#### S

##### Schema (Databases)
A database `schema` is a term used to describe the [tables](#table-databases), [columns](#column-databases) in tables, and [relationships between tables](#relational-databases). Here's an example of a schema describing a task list:

![Sample schema](http://www.paulzaich.com/wp-content/uploads/2012/07/Screen-Shot-2012-07-03-at-3.28.08-PM-600x400.pnga)

##### Select (SQL)

A `SELECT` [query](#query-databases) is used to retrieve [rows](#row-database) of [data](#data) from a [database](#database) [table](#table-databases). Syntax: `SELECT id, name, age, birthdate FROM people`.

##### Server
A server is a piece of software the manages [data](#data) for it's [clients](#client). Servers are often hosted somewhere on the [internet](#internet); and are half of the [client server model](#client-server-model).

##### Sinatra
Sinatra is a [web application](#web-application) [framework](#application-framework) that makes it easy to [respond](#response) to [http](#http-hypertext-transfer-protocol) [requests](#request) in ruby. It is much smaller than Rails; and doesn't hide as much details about what's going on as rails does. This makes it an ideal learning tool for understanding the web.

##### Status Codes

Status codes are part of the [response](#response) that carries quite a bit of
information. Status codes start with the numbers 1 to 5, and each have specific
meaning:
* 1XX - Informational
* 2XX - Success
* 3XX - Redirection
* 4XX - Client Error
* 5XX - Server Error

The most common status codes are:

* [200 OK](https://httpcats.herokuapp.com/200) - Everything went great
* [404 Not Found](https://httpcats.herokuapp.com/404) - The
  [URL](#uniform-resource-locator) you requested doesn't exist
* [401 Unauthorized](https://httpcats.herokuapp.com/401) - The
  [Authorization](#authorization) [header](#headers) you included doesn't
  permit you to access the [url](#uniform-resource-locator) you requested

A more comprehensive list [may be found on
wikipedia](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes).

##### SQL (Structured Query Language)
SQL is an easy to use programming language that is designed for interacting with databases. SQL is designed for [relational databases](#relational-database); and is primarily used to [insert](#insert-sql), [select](#select-sql), and [update](#update-sql) data in [tables](#table-databases).

To learn more:

* Install SQLite3 for your operating system (Use the Googles!)
* Follow this [relatively decent sql cheatsheet](http://blog.niklasottosson.com/?p=1342)

#### T

##### Table (Databases)
A [database](#database) table is used to store many [rows](#row-databases) of [data](#data). The table [schema](#schema-databases) states which [columns](#column-databases) every row can contain.


#### U
##### Update (SQL)
An `UPDATE` [query][#query-databases] is used to alter the [data](#data) stored in a [table](#table-databases) [rows](#row-databases). Syntax: `UPDATE people SET age=8 WHERE name="Zee";`

##### URL (Uniform Resource Locator)
The Uniform Resource Locator, often called the web address, is a mainstay of the
[Internet](#internet). It's used to identify where a resource lives on the
Internet in a human-and-robot readable fashion.

#### W

##### Web
The Web is used to reference interconnected web sites served up over
[HTTP](#http-hypertext-transfer-protocol). Easily confused with the
[Internet](#internet)

##### Web Application

##### Web Service (or Web API)
A web service (or web [API](#api) is a program hosted on [the web](#web) designed to
be used by other programs. Using Yelps API you could write a
lunch decider app that interacts with their [search
API](http://www.yelp.com/developers/documentation/v2/search_api) and selects a
single location based upon whatever criteria you like.

To use a web service, your program sends [requests](#request) to a
[url](#url-uniform-resource-locator) and gets [data](#data) back, often
[encoded](#encoding-and-decoding) in [JSON](#json-javascript-object-notation).
