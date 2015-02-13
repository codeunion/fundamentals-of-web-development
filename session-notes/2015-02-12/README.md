# Fundamentals of Web Development

**February 12, 2015**

Questions:

- What's the deal with run_length_encode? (what about #inject) - 10-15
- Sinatra routes - what's supposed to show on the local web browser - 5-10
- How to set up user signup and login in Sinatra - 20+
- Getting started on Tweetalyzer project - 10
- Associations beyond basic one-to-many - 20

## User signup and login

3 different things

- persistence layer that stores my email/username and password
- mimicking state in a stateless protocol / sessions in Sinatra
- encryption


## Database associations

walls
-----
id

comments
--------
id
wall_id => wall.id

wall_likes
----------
wall_id
like_id

comment_likes
-------------
comment_id
like_id

likes
-----
id

---

drivers
-------
id
name (bob, joe, sam)

races
-----
id
name (indy, daytona)

results
-------
driver_id
race_id
position

results:
driver | race | position
------------------------
bob    | indy | 7
sam    | indy | 4
joe    | indy | 1
bob    | daytona | 8
