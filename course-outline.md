# Syllabus: Fundamentals of Web Development

Each week has three sections: tooling, mental models, and capabilities.

<dl>
  <dt>Tooling</dt>
  <dd>Any new tools, technologies, services, or libraries a student will be interacting with.</dd>

  <dt>Mental Models</dt>
  <dd>Questions, concepts, or topics for which students should have a clear and precise picture in their heads.</dd>

  <dt>Capabilities</dt>
  <dd>What we expect a student to be able to do on their own by the end of the week if they stretch a little</dd>
</dl>

## Contents

- [Week 1](#week-1)
  - [Tooling (Week 1)](#tooling-week-1)
  - [Mental Models (Week 1)](#mental-models-week-1)
  - [Capabilities (Week 1)](#capabilities-week-1)
- [Week 2](#week-2)
  - [Tooling (Week 2)](#tooling-week-2)
  - [Mental Models (Week 2)](#mental-models-week-2)
  - [Capabilities (Week 2)](#capabilities-week-2)
- [Week 3](#week-3)
  - [Tooling (Week 3)](#tooling-week-3)
  - [Mental Models (Week 3)](#mental-models-week-3)
  - [Capabilities (Week 3)](#capabilities-week-3)
- [Week 4](#week-4)
  - [Tooling (Week 4)](#tooling-week-4)
  - [Mental Models](#mental-models)
  - [Capabilities (Week 4)](#capabilities-week-4)
- [Week 5](#week-5)
  - [Tooling (Week 5)](#tooling-week-5)
  - [Mental Models (Week 5)](#mental-models-week-5)
  - [Capabilities (Week 5)](#capabilities-week-5)
- [Week 6](#week-6)
  - [Tooling (Week 6)](#tooling-week-6)
  - [Mental Models (Week 6)](#mental-models-week-6)
  - [Capabilities (Week 6)](#capabilities-week-6)
- [Week 7](#week-7)
  - [Tooling (Week 7)](#tooling-week-7)
  - [Mental Models (Week 7)](#mental-models-week-7)
  - [Capabilities (Week 7)](#capabilities-week-7)
- [Week 8](#week-8)
  - [Tooling (Week 8)](#tooling-week-8)
  - [Mental Models (Week 8)](#mental-models-week-8)
  - [Capabilities (Week 8)](#capabilities-week-8)

## Week 1

Core tooling, processes, and mental models.

### Tooling (Week 1)

1. The "command line" and essential commands
1. Sublime text
1. git and GitHub
1. Basic feedback flow
1. Bundler & Gemfiles

### Mental Models (Week 1)

1. "What is code?"
1. "What is a computer and what is a computer program?"
1. A method returning a value vs. printing that value to the screen
1. A coherent mental model of a method
1. "Invisible" control characters like "\n" and "\t"
1. Tabs vs. spaces
1. Method composition (and chaining)
1. Nested loops
1. Integer arithmetic (`/` and `%`) vs. Floating-point arithmetic
1. Type-centric thinking, i.e., asking "What kind of value does this method return?"
1. Purpose of sanity checks
1. Command-line arguments
1. Environment variables (and what we mean by "environment")

### Capabilities (Week 1)

1. Debugging, debugging, debugging
1. Will add more, didn't originally have this section


## Week 2

First web application

### Tooling (Week 2)

1. Sinatra
1. Heroku
1. Rack, `rackup`, and `config.ru`
1. `dotenv` to manage application-specific environment variables

### Mental Models (Week 2)

1. How do two computers talk to each other (over the internet)? (phone metaphor, phone metaphor, phone metaphor)
1. What does "client/server" mean?
1. What is a web server?  What is the web?
1. What is an HTML document?  What is a web browser?
1. Difference in "execution flow" between normal Ruby app vs. Sinatra app
1. Request/response cycle and HTTP methods
1. What data does a browser send to a web server and how is it formatted?
1. What does does a web server send back to a browser and how is it formatted?
1. Parameters (in URL)
1. Parameters (from form)
1. Render vs. redirect
1. Classes, objects, instance variables, and instance methods

### Capabilities (Week 2)

**Note**: Avoid PUT and DELETE plz kthx.

1. Debugging, debugging, debugging
1. Deploy a basic Sinatra application to Heroku
1. Modify existing Sinatra application to induce new behavior
1. Essential HTML tags and rules of HTML
1. Write an HTML form that submits a GET request to a Sinatra application
1. Write an HTML form that submits a POST request to a Sinatra application
1. Integrate pre-existing code into a web application (e.g., katas)

## Week 3

First web application with persistence and API 101

### Tooling (Week 3)

1. SQLite
1. DataMapper

### Mental Models (Week 3)

1. What is the "persistence problem" and why is it particular to HTTP?
1. What is a database?  What is a relational database?
1. What is SQL?
1. What is DataMapper?
1. Parameters (from named parameters)
1. Primary keys in a database
1. Notion of "type" in a database
1. Error handling in a web application
1. Block-level vs. inline-level elements in HTML
1. Basic CSS (ids vs. classes, "descendent of" selector)
1. What is an API?

### Capabilities (Week 3)

1. Deploy a Sinatra application w/ persistence to Heroku
1. Add new field to existing database model
1. Modify Sinatra app to handle new field (controller code, view code, etc.)
1. Write an HTML form that submits a PUT request to a Sinatra application
1. Write an HTML form that submits a DELETE request to a Sinatra application
1. 2-3 core "layout" patterns via CSS

## Week 4

Multiple database models and associations

**Note**: Week 4 could be 80% front-end material using http://learn.shayhowe.com/.
This week could then move to Week 5.  IMO, front-end material isn't interesting
until we have *at least* a web application with persistence and single-table database.

### Tooling (Week 4)

1. Schema design (http://dbdsgnr.appspot.com/)
1. jQuery

### Mental Models

1. Foreign keys in a database
1. One-to-many relationships
1. "Fancy form fields", i.e., name="user[first_name]"

### Capabilities (Week 4)

## Week 5

First 1 of N project and HTML/CSS.

### Tooling (Week 5)

1. CSS (whoa)

### Mental Models (Week 5)

1. The DOM
1. The relationship between CSS selectors and the DOM
1. The "cascade" in CSS

### Capabilities (Week 5)

## Week 6

Self-directed project #1

### Tooling (Week 6)

1. AJAX

### Mental Models (Week 6)

### Capabilities (Week 6)

## Week 7

Self-directed project #2

### Tooling (Week 7)

### Mental Models (Week 7)

### Capabilities (Week 7)

## Week 8

Self-directed project #3

### Tooling (Week 8)

### Mental Models (Week 8)

### Capabilities (Week 8)
