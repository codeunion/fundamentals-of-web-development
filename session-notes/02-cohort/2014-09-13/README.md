# Session (Sept. 13, 2014)

## Integrating With Wall-B

1. In the application root, create a directory named `public/`.
2. Place `main.css` and `normalize.css` in the `public/` directory.
3. Create a file named `layout.erb` in the `views/` directory.
4. `layout.erb` should contain something like

    ```erb
    <html>
      <head>
        <link rel="stylesheet" href="normalize.css">
        <link rel="stylesheet" href="main.css">
      </head>
      <body>
        <%= yield %>
      </body>
    </html>
    ```
