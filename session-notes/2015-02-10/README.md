# Fundamentals of Web Development

**February 10, 2015**

Video: http://youtu.be/oLZiQSLhq4c

## A View-First Approach to Design

We're going to build an app that manages backcountry permits. These are the things that you need if you want to go backpacking in the wilderness or in the backcountry of a National Park.

Stages:

1. Define user stories
1. Sketch out UX (user experience) with wireframes
1. Build routes
1. Build views
1. Define the _shape_ of form data

### User stories

two users: hiker, admin

#### v1
- As a hiker, I want to register a new backcountry permit
- As a hiker, I want to find places I can get a permit for
- As an admin, I want to see a list of all permits

#### v1.5
- As a hiker, I want to know the term (start/end date) of the permit
- As an admin, I want to be able to search permits by date, park or hiker

#### v2
- As a hiker, I want a confirmation that my application was accepted
- As an admin, I want to be able to contact permit holders by phone
- As an admin, I want to see the payment status for a permit

### Wireframes

![wireframe](http://cl.ly/image/0g1X2k0e1w3K/backcountry-wireframe.jpg)

### Routes

#### v1

```
GET   /                     list all the parks
GET   /:park_name           show park detail (example: /yellowstone)
POST  /:park_name/register  apply for a permit
GET   /admin/permits        list of all permits
```
