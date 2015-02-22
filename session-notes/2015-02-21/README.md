# Fundamentals of Web Development

**February 21, 2015**

Video: http://youtu.be/xgUvRw0gEC8

## Associations in DataMapper

We're going to explore database associations in more detail.

Since we are working with a relational database (SQLite) and an Object-Relational Mapper (DataMapper), when we talk about associations we are talking about two things:

- Creating an appropriate database schema with tables that are _associated_ by creating **foreign key** columns to store the **primary keys** of other tables.
- Writing Ruby classes that utilize DataMapper's features to model associations using `belongs_to`, `has n`, and `has n, through:` _associations_ between the **models**.

The key concepts we will learn:

- One-to-many associations
- Many-to-many associations
- "Custom" or unconventional associations
- One-to-one associations (less important, may not get to it)

To explore these concepts, we'll be building the data layer for a note-taking application.

### Nevernote

User stories [MVP]:

- As a user, I want to keep a store of notes.
- As a user, I want to search for notes by their title.
- As a user, I want to organize notes into notebooks.
- As a user, I want to add tags to notes.
- As a user, I want to see all notes in a notebook.
- As a user, I want to see all notes that have a particular tag.

The schema for this MVP looks like this:

```sql
CREATE TABLE "users" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "username" VARCHAR(50) NOT NULL, "password" VARCHAR(60) NOT NULL);
CREATE UNIQUE INDEX "unique_users_username" ON "users" ("username");

CREATE TABLE "notes" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "title" VARCHAR(50) NOT NULL, "content" TEXT DEFAULT 'Blank note', "notebook_id" INTEGER NOT NULL);
CREATE INDEX "index_notes_notebook" ON "notes" ("notebook_id");

CREATE TABLE "notebooks" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "name" VARCHAR(50) NOT NULL, "user_id" INTEGER NOT NULL);
CREATE INDEX "index_notebooks_user" ON "notebooks" ("user_id");

CREATE TABLE "taggings" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "note_id" INTEGER NOT NULL, "tag_id" INTEGER NOT NULL);
CREATE INDEX "index_taggings_note" ON "taggings" ("note_id");
CREATE INDEX "index_taggings_tag" ON "taggings" ("tag_id");

CREATE TABLE "tags" ("id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "name" VARCHAR(30) NOT NULL);
CREATE UNIQUE INDEX "unique_tags_name" ON "tags" ("name");
```

User stories [alpha]:

- As a user, I want to share notes with my friends.
- As a user, I want to see the notes that have been shared with me.
- As a user, I want to share notebooks with my friends.
- As a user, I want to see the notebooks that have been shared with me.
- As a user, I want to search for notes by date of creation or last update.
