## WWJD

### What Would John Do

> You are in a cave, it is dark, you need to get out, you feel the oxygen thinning, you don't know what to do.

What decision making patterns will help you out of the cave?

Luckily computer programming isn't really like this, but sometimes, it can feel like it.

When I was on active duty as an officer in the US Navy, I spent a lot of time learning to combat fires and went to many schools to learn this.  One thing that many people outside the military think is that in times of emergency, military people come up with special solutions and courage.  Actually, except for very infrequent circumstances, this is not how things happen.  In times of great peril, people revert back to the training patterns they have learned and internalized at a pre-cognitive level.  

In plain speak, this means that people use the decision making patterns that they don't have to think about.

Luckily in computer programming, we have some patterns that we can internalize.  These patterns will help us when we are confronted with something we don't know how to deal with.  In fact, the faster you, the developer internalize these behaviors, the funner programming will be.


### **"Fallback Patterns of Problem Solving"**

1. What letter of the CRUD acronym does the next step that I need to take sound like?

1. What is the type of thing I am immediately presented with?

1. What methods or tools can be used with the thing I am looking at ?

  > what role does documenation play in question #3?




### **CRUD** - **C**reate **R**ead **U**pdate **D**estroy

### Create

```ruby
  name = "john davison"
  # = is assigning, aka, creating data
```

### Read

```ruby
  name[0]
  # returns "j"
  # this method is reading the underlying data
```

### Update

```ruby
  name.upcase!
  # returns "JOHN DAVISON"
  # the value that name points to has been updated
  # the '!' causes the method to change the underlying data
```

### Destroy

```ruby
  # a little harder to explain, how to flush memory?
  # destroy makes more sense with a database
```
