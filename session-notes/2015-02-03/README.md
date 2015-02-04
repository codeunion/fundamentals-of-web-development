# Fundamentals of Web Development

**February 03, 2015**

## Introduction to Sinatra and the Web

### Files

- `basic-app.rb` : a basic web app using Sinatra. Shows a few example routes.
- `config.ru` : alternate way to start the `basic-app.rb` file using the `rackup` commands

To run this server, you can either use regular Ruby:

```shell-session
$ ruby basic-app.rb
# ... server starting
```

... or rackup:

```shell-session
$ rackup
# ... server starting
```

If you want to restart the server every time you change your code, use the `rerun` command. You'll need to have installed the `rerun` gem.

```shell-session
$ rerun -c ruby basic-app.rb
# ... server starting
```

### Context

- The HTTP request/response cycle
- Anatomy of a Sinatra route
- Debugging in a web app

### Project: Inspector

Source code is in the [inspector directory](inspector).

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
