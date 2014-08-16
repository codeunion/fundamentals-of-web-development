# Session: Web Fundamentals (Saturday, August 16)

I'll be in around 12:05PM Pacific.  In the meantime, write down any questions, concerns, confusions, though, or whatever else you might have.  They can be as vague or as specific as you'd like.

For example, your question could just be, "Persistence - WTF?"

## Questions, etc.

1. Paralysis by analysis - where do I start?
2. Where do we start on the SQL queries?
3. Methods, arguments, and their return values - strings vs. integers?
4. Walk through the priorities?
5. 
6. 

## The important thing to remember:
1.  We NEED persistence so our web application can remember information
    between requests.  Typically, we "persist" data in a relational database
    like SQLite, MySQL, or PostgreSQL.  We can persist it anywhere, though,
    including a plain text file.

2.  Web applications are a fancy way of generating HTML documents on the fly.
    Typically, they're generated based on dynamic data supplied by the user,
    either in the current request or from their past requests (which we have
    information about because we persisted data from those past requests)

3.  HTTP request really had two parts: (http_method, URL). The method is
    sometimes called the "verb."

    ```text
    (GET, /walls)       # Show me all the walls
    (POST, /walls)      # Create a new wall
    (GET, /walls/10)    # Show me wall no. 10
    (PUT, /walls/10)    # Update wall no. 10
    (DELETE, /walls/10) # Delete wall no. 10
    ```

## Priorities

1. Get feedback
2. Get feedback
3. Get feedback
4. Get feedback
5. Get feedback
6. Get feedback
7. Get feedback
8. Make sure you know how web application do their work (at a high level)
9. Make a functional web application
10. Understand all the nitty gritty, e.g., the ins-and-outs of SQL, CSS, etc.

## Everyone's Picture of the World

### What is a method and why do we care about them?

Also called a "function."  It's something in the code that acts on an input and returns a value (from that input).  That act on that input is whatever the person who wrote the method decided it to be.  We care about them because it's one of the core parts of a program.

A method is something that completes a task.

You can define a method once and call it in multiple places, so you don't have to repeat the code.

### What is a web page and why do we care about them?

A web page is static information that is displayed on a web browser.  That information is stored somewhere on a server.  It's important because that's how we communicate with the user.

A web page is no different than your local program on your machine (e.g., your email client, Microsoft word, etc.), but it grabs it from a server instead of your machine.

### What is a web application and why do we care about them?

It is a series of documents or web pages or programs that can be running on a server (but aren't necessarily).  We care about them because in order to do more and more complex things we need something like web applications.

An application is a way that we can interact with the user.

### The Web - What is it?

1. The web was invented to share HTML documents
2. Hence: HTML = hypertext markup language, HTTP = hypertext transfer protocol
3. A web server (or HTTP server) is "hypertext document warehouse"
4. A browser is a "hypertext document reader" - it reads in HTML and displays it all pretty-like
4. At first, people would share documents that lived on their respective computers
5. But, browsers don't care how the HTML was generated.
6. So, we built applications that could generate HTML in real time.
7. Earliest web applications were built using something called "CGI" or "Common Gateway Interface"

URLs like this used to be VERY common: http://website.com/cgi-bin/whatever.cgi?id=10

### What is persistence and why do we care about it?

#### Most common SQL-based databases (in no particular order)

1. PostgreSQL  (Heroku uses this!)
2. MySQL
3. SQLite3     (We're using this locally!)
4. MS SQL Server


```text
id|first_name|last_name|email
5|Jesse|Farmer|jesse@codeunion.io
10|John|Davison|john@codeunion.io
```

```text
id|created_by|title|description |likes|created_at
1 |Katzy     |Yo   |A wall of yo|     |2014-08-16T13:41:07-07:00
```

http://cl.ly/image/3I2P193C1x06

