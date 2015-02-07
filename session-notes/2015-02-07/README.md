# Fundamentals of Web Development

**February 07, 2015**

Video: http://youtu.be/b0cRBolCZTQ

## Build an Address Book

or, "Database-backed Applications with a Web Interface".

We're going to approach web apps from the data layer up.

What this means is that we're going to start by writing a program that models an address book and can **create, read, update, and delete** entries in this address book.

In tech lingo, you can call this a "CRUD" app because it that is the unfortunate acronym for the above operations.

We'll start by writing a basic Ruby app backed by a SQLite database and use DataMapper to handle the interaction.

Then we'll _add on_ a web interface for the address book using Sinatra to create routes for:

```
GET   /people             # view all the people
GET   /people/:id         # view (READ) a specific person
GET   /people/new         # view a form to create a new person
POST  /people             # CREATE a person in the address book database
GET   /people/:id/edit    # view a form to edit an existing person
POST  /people/:id/edit    # UPDATE the person in the address book database
POST  /people/:id/delete  # DELETE a person from the address book database
```

The code we wrote in the session is available in [address-book](address-book).

```
address-book/
├── Gemfile
├── Gemfile.lock
├── address-book-test.rb # tests for CRUD actions using Contact model
├── address-book.db      # SQLite database file
├── data-model.rb        # setup DataMapper, define Contact model
├── dex-server.rb        # Sinatra server to provide web interface (INCOMPLETE)
└── dex.rb               # CLI interface to manage contacts
```
