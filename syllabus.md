# Syllabus

The curriculum for Fundamentals of Web Development is broken in to 4 themed **sprints**:

- [Sprint 1 - Programming Fundamentals](#sprint-1---programming-fundamentals)
- [Sprint 2 - First Web Applications](#sprint-2---first-web-applications)
- [Sprint 3 - Core Patterns in Web Development](#sprint-3---core-patterns-in-web-development)
- [Sprint 4 - Capstone Project](#sprint-4---capstone-project)

Each sprint is 2 weeks long.

Each sprint, think about picking one of the example projects and working on it to feature completion.

Throughout the entire workshop, attempt to complete as many kata as possible. Remember to request feedback code as frequently as possible.  Make small frequent commits and ask for regular feedback. If someone hasn't responded to your code within 24 hours, make a specific inquiry.

## Sprint 1 - Programming Fundamentals

Students will get their hands dirty writing Ruby applications that interact with files, websites, and third-party APIs.  Most projects will involve printing out "interesting information" in multiple formats, e.g., text, HTML, CSV, and/or JSON.

The high-level goal is to get students comfortable with the idea of fetching raw data, processing it, and outputting it in a new format.  We want students asking questions like:

- Where does the data I want live?
- How do I get that data?
- How is that data encoded?
- How do I decode and process that data in Ruby?
- What kind of value does this procedure return?
- What is an environment in the context of programming?

### Topics Covered

- Data in Ruby (integers, floats, strings, arrays, hashes, et-)
- Reading and writing files
- File formats and encoding (text, HTML, CSV, images, et-)
- Command line arguments and environment variables
- Interacting with third-party APIs and websites in Ruby
- Producing web pages (HTML/CSS/JavaScript) with Ruby
- Git & GitHub
- Using a professional text editor
- Bundler & Gemfiles

### Projects

- [HTML photo gallery generator][photo-gallery-cli]
- [Text analysis and reporting][text-analysis] (word counts, frequencies, etc.)

### Exercises

- [Series-A Kata][series-A]

## Sprint 2 - First Web Applications

Students will dive into basic database-backed web applications using Sinatra.  This sprint will emphasize wireframes, static mockups, and data modeling.

The high-level goal is to get students comfortable with what it means to write, deploy, and debug a web application. We want students asking questions like:

- How do computers communicate with each other?
- How will a user interact with this software?
- When does this code need to run?
- What is the shape of the data I am working with?
- Where will I store the data to be managed?
- How can I inspect the state of this program?

### Topics Covered

- Deploying web applications
- Web application frameworks
- Wireframing, interface design, and static mockups in HTML/CSS
- The HTTP request/response cycle
- Relational databases and persistence
- Modeling data (1-many, many-many)
- Cookies, sessions, and user authentication
- File uploading and processing

### Projects

- [Social Wall][social-wall]
- [Wall-B, Message Board][wall-b]
- [Command Line Twitter Client][twitter-client]
- [Tweetalyzer][tweetalyzer]

### Exercises

- [Series-B Kata][series-B]
- [Series-C Kata][series-C]
- [Sinatra Get Requests][sinatra get requests]
- [Sinatra Post Requests][sinatra post requests]


## Sprint 3 - Core Patterns in Web Development

This sprint will cover several "core patterns" in web development.  

Students will have the choice of defining their own project to work on, if they want.

We want students asking questions like:

- What is the desired user experience for my application?
- How will my application interface with other applications?
- Why does performance matter?
- What is an appropriate design pattern to apply in this context?
- Where in the codebase should this logic reside?
- What is the difference in execution context between client and server?

### Topics Covered

- AJAX
- File uploading and processing
- Background tasks
- Structured JavaScript
- Sending email
- More complex data models

### Projects

- [Can I Eat Here][can-i-eat-here]
- [Air Stable][air-stable]
- [LinkedOut][linkedout]

### Exercises

- [Series D Kata][series-D]

## Sprint 4 - Capstone Project

Students have the option of defining their own project, continuing to work on their project from Sprint 3, or pick up a new project work on.

This is an open-ended sprint. It is a time for students to define what they want to focus on and hone those skills with guidance and feedback.


<!-- Projects -->

[text-analysis]:https://github.com/codeunion/text-analysis
[photo-gallery-cli]:https://github.com/codeunion/photo-gallery-cli
[social-wall]:https://github.com/codeunion/social-wall
[wall-b]:https://github.com/codeunion/wall-b
[tweetalyzer]:https://github.com/codeunion/tweetalyzer
[twitter-client]:https://github.com/codeunion/twitter-client
[air-stable]:https://github.com/codeunion/air-stable
[can-i-eat-here]:https://github.com/codeunion/can-i-eat-here
[linkedout]:https://github.com/codeunion/linkedout

<!-- unused -->
[sinatra-get]:https://github.com/codeunion/sinatra-get
[sinatra-playground]:https://github.com/codeunion/sinatra-playground
[sinatra-singing-tweets]:https://github.com/codeunion/sinatra-singing-tweets


<!-- Exercises -->

[series-A]:https://github.com/codeunion/web-fundamentals-weekly-katas/tree/master/series-A
[series-B]:https://github.com/codeunion/web-fundamentals-weekly-katas/tree/master/series-B
[series-C]:https://github.com/codeunion/web-fundamentals-weekly-katas/tree/master/series-C
[series-D]:https://github.com/codeunion/web-fundamentals-weekly-katas/tree/master/series-D
[sinatra post requests]:https://github.com/codeunion/web-fundamentals-weekly-katas/tree/master/sinatra/handling-get-requests
[sinatra get requests]:https://github.com/codeunion/web-fundamentals-weekly-katas/tree/master/sinatra/handling-get-requests

<!-- unused -->
[ruby-exercises]:https://github.com/codeunion/ruby-exercises
[javascript-exercises]:https://github.com/codeunion/javascript-exercises
[serverside-sinatra-katas]:https://github.com/codeunion/serverside-sinatra-katas


<!-- Examples -->

<!-- unused -->
[examples-sinatra]:https://github.com/codeunion/examples-sinatra
[simple-servers]:https://github.com/codeunion/simple-servers
[yardsale]:https://github.com/codeunion/yardsale
[overheard-server]:https://github.com/codeunion/overheard-server
[linkedout-example]:https://github.com/codeunion/linkedout-example
