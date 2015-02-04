# Fundamentals of Web Development

**February 03, 2015**

## Introduction to Sinatra and the Web

Context:

- The HTTP request/response cycle
- Anatomy of a Sinatra route
- Debugging in a web app

Project: Inspector

Build a web app that displays information about its own internals. Use the default Sinatra error page as an example

Response HTML will include information about:

- The request
  + Request body
  + Request port
  + Request method
  + Query string
  + Request host
  + Client user agent
  + Request URL
  + Client IP address
- Sinatra internals
  + The params hash
  + The sinatra route
- The response
  + All response headers
  + Status code
