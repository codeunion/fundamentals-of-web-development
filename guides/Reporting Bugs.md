There's an art to reporting a bug in your own code or in someone else's code.  Your *main* goals are to get the bug fixed, see how it was fixed, and understand how the person you're reporting the bug to figured out what was broken if you didn't know beforehand.

To do that you need to give the person you're reporting the bug to enough *relevant* context that they have a reasonable chance at figuring out what's wrong, while avoiding noise.  Here are some general guidelines to making a successful bug report.  Everything here also applies when you're asking for help in general, of course!

## Contents

- [Bug Reports](#bug-reports)
	- [Hierarchy of Bug Reports](#hierarchy-of-bug-reports)
	- [Stephen's Bug Report](#stephens-bug-report)
		- [Have Hypotheses](#have-hypotheses)
		- [The Error Message (As Provided)](#the-error-message-as-provided)
		- [Minimum Debuggable Context](#minimum-debuggable-context)
- [Bug Report Stories](#bug-report-stories)
	- [Jesse's iOS Bug Report](#jesses-ios-bug-report)
	- [Jesse Reports an RSpec Bug](#jesse-reports-an-rspec-bug)

## Bug Reports

We'll assume the person reporting the bug doesn't understand why a bug is happening and only knows *that* it is happening.  The "gold standard" is a report which includes a (minimal) reproduction case (i.e., instructions to reproduce the bug with as little extra code as possible) and enough context for the developer to have a *reasonable* shot at fixing the bug without getting more information from you.

### Hierarchy of Bug Reports

Here's a hierarchy of bug reports, from least likely to get your problem solved to most likely. :)

1. **Bug Report**: My application is broken.

   **Response**: What are you trying to do?  In what way is it broken?

2. **Bug Report**: I want my application to do X, but it doesn't work when I try.

  **Response**: Why do you want to do X? How can you tell it isn't working? What were you expecting it to do? What did it do instead?

3. **Bug Report**: When I try to do X, I get a "WhateverError" exception, e.g., a `NoMethodError`, an `ArgumentError`, etc.

  **Response**: A `WhateverError` could mean lots of things.  Why did you want to do X?  Where in the code was this error thrown?

4. **Bug Report**: I am doing X in order to make my application do Y.  When I run the code I get a `WhateverError`.

   **Response**: Can you see a [stack trace](http://en.wikipedia.org/wiki/Stack_trace)?  What parts of it do you understand?  Can you share the entire stack trace with us?  At a minimum, it should tell you what

   1. The exception raised plus an error message, e.g.,

      ```text
      ArgumentError: wrong number of arguments (0 for 1)
      ```

      ```text
      NoMethodError: undefined method `some_method' for nil:NilClass
      ```
   2. The filename and line on which the exception was raised, e.g., `whatever.rb:10` means the error occurred on line `10` inside `whatever.rb`.
   3. The method inside which the exception was raised, e.g., `in ``some_method'` means the error occurred while calling `some_method`
   4. The "call stack" of all method calls leading up to the one that eventually resulted in an exception.  This will be 5-10 lines *below* the error message.

5. **Bug Report**: I am doing X in order to make my application do Y.  I am getting an error message I don't understand.  Here is the stack trace.  Any ideas?

   **Response** (if problem is clear): You're calling `some_method` with a `nil` argument on line `25` of `widget.rb`, but it expects the argument to be non-`nil`.  Why is the argument `nil`?  Can you show me the code?

There are further levels in the hierarchy.

### Stephen's Bug Report

For context, Stephens submitted a bug report saying that his Sinatra application worked fine locally but failed to even start when he deployed it to Heroku.

#### Have Hypotheses

Before anything else, you need to *have hypotheses* for what is causing your application to break. In this case, since the application is working locally (the development environment) but not on Heroku (the production environment), these should be the top hypotheses (or "educated guesses"), in order:

1. There is a difference between your development and production environments that account for the fact that it's working locally but not on Heroku.
   1. Explicit differences, e.g., in development we use SQLite3 for our database but on Heroku we use PostgreSQL.  These differences should be contained entirely in the `Gemfile` and/or environment variables.  If they're contained elsewhere, that's a problem in and of itself.
   2. Operational differences. Maybe you need to run some extra commands on Heroku to get the application running. Maybe the command you're running locally to start your application isn't the same command as you're running on Heroku, etc.
   3. Implicit differences. Does Heroku require files be in different locations than your local environment?  Does Heroku expect different file names?  Are you relying on "environmental features" locally that might not be present on Heroku, e.g., the fact that OS X's file system is case-insensitive by default (see http://apple.stackexchange.com/questions/71357/how-to-check-if-my-hd-is-case-sensitive-or-not)?
2. Your code has environment-specific logic in it, i.e., "if we're in the development environment then do X, else do Y."
3. There's something wrong with your code *per se*.  Maybe it is failing locally.  Imagine there's an error which is not treated as "fatal" in your local environment, but which Heroku does treat as fatal.  This might show up as a "warning" in your local environment.
4. Something else. This is always a possibility.

The "environmental difference" hypothesis is *by far* the most likely one, absent additional evidence, but stephen's original bug report fell into category (1) or (2): "When I try to deploy my application, it fails."

#### The Error Message (As Provided)

We asked for a more detailed error message, and Stephens sent us this:

```text
2014-07-16T18:20:37.409892+00:00 heroku[router]: at=error code=H10 desc="App crashed"
method=GET path="/" host=wall-message.herokuapp.com
request_id=85dee588-5413-4080-9caf-e49df899d2da fwd="69.181.38.163"
dyno= connect= service= status=503 bytes=
```

It's great that Stephens recognized this as an error. In fact, the `status=503` tells us this request is returning an HTTP 503 Service Unavailable status code (cf. http://en.wikipedia.org/wiki/List_of_HTTP_status_codes#5xx_Server_Error).  What's more, the `at=error code=H10` is Heroku-specific error information.  See the list of Heroku Error Codes, here: https://devcenter.heroku.com/articles/error-codes#h10-app-crashed.  **Note**, I found this page by Googling for "heroku error h10" (http://cl.ly/image/360A0m1B0S13).

H10 indicates that Heroku couldn't start Stephens application. So, we definitely know more than we knew before and have confirmed that this there is something wrong with how the application starts up.

Still, we don't have near enough context to diagnose the issue without pulling down the entire project, trying to deploy it ourselves, and hoping that we get the same error message.  And even then, there's a good chance that we won't even *get* the same error. For example, imagine if the application works fine the first time we deploy it but fails the second time we deploy it. Or, imagine if the applications fails when we re-deploy it after making changes to the database schema (and only in that scenario).  Without the extra context we'd have to puzzle this out ourselves.

#### Minimum Debuggable Context

Of course, you don't know what the problem is or what information will be necessary to diagnose the problem.  That means the the more context the person reporting the bug provides the more likely the person receiving the bug report will be able to diagnose the problem *without* going back and forth witht the reporter.  Below would constitute the "minimum debuggable context"

1. ##### Environmental Differences

   Are there any major difference between your development (local) and production (Heroku) environments?  Do you know what counts as "major"?  Do you know what information we'd need to answer this question?
   1. Are you running the same versions of Ruby in development and production?
   2. Are you running the same versions of DataMapper in development and production?
   3. Does your `Gemfile` contain substantial differences between development and production?

2. ##### State of Code

   Starting with the strack trace, where is your code failing and what is the error message?  Is this enough to reproduce the bug locally?
   
3. ##### Historical or Time-Dependent Differences

   Can you deploy the application to a *fresh* Heroku app or does it only fail when you deploy it to an existing Heroku app?

   Were you *ever* able to deploy the application successfully?  Can you pin-point the commit before which you can deploy it but after which you can't?  **Note**: If you've been making small, logically cohesive commits then this process will tell you a lot.  But if you've been making massive commits this process will not tell you much (if anything). :)

## Bug Report Stories

Here are two quick stories about successful bug reports.  Here "successful" means "the developer recognized my report as a bug, identified the problem, and fixed it in short order."

### Jesse's iOS Bug Report

I was testing a friend's mobile application on my iPhone.  On the application's main screen there was a "Contact Developer" button, but every time I clicked it the application would crash.  I could have said to my friend, "Hey, whenever I click this button the application crashes.  Just FYI."

Instead, my bug report included the following:

1. The *exact* sequence of events I took that caused the application to crash, e.g., "I restarted my iPhone.  I clicked your application's icon.  I was presented with a loading screen that looked like X (see screenshot).  Eventually, I was presented with another screen that looked like Y (screenshot).  I then clicked the button labeled 'Contact Developer' and the application crashed."
2. A screenshot of my iPhone's "General Info" section, which includes what version of iOS I'm using, configuration settings, hardware versions, information about how much space I'm using and what applications I have installed, and so on.
3. The crash log from my phone. I looked up how iPhone's store crash logs.  It turns out that if "iPhone syncing" is set up, my iPhone will sync these crash logs to my desktop.  So, I found here on my computer those logs were stored and attached that log.
4. Since I knew this was related to email, I also sent the developer every bit of information around how I use email on my phone: what email client I used (w/ version), screenshots of my email configuration screen on my iPhone, and so on.

All told this took about 15 minutes to do, but it increased the likelihood that the bug would *actually get fixed* by 100x.

### Jesse Reports an RSpec Bug

While writing some automated tests using [RSpec](https://github.com/rspec/rspec), I upgraded RSpec from version `2.10.0` to version `2.11.0`.  "Minor updates" like this *should not* break any major interfaces, but suddenly 25% or so of my tests were failing.  I downgraded to `2.10.0` and the tests passed again, so I knew that either (1) my tests were written incorrectly in the first place and `2.11.0` contained a fix to RSpec which exposed that or (2) there was a change between `2.10.0` and `2.11.0` that changed RSpec's behavior in a way that now made my tests fail.  The latter was is 100% a bug.

I worked to produce a single, self-contained test that worked in `2.10.0` but failed in `2.11.0`, so that the RSpec developers could reproduce my bug without having access to my *entire* development environment.

Eventually, I filed this (very detailed) bug report: https://github.com/rspec/rspec-expectations/issues/161

Notice how I "told a story" for the developer and didn't just drop code in their lap and say, "Hey, this isn't working."  I described how I found the bug, what versions of RSpec I was using, whether I could reproduce the bug, error message logs, and so on.

Next, notice the response from the developers.  The bug report was *so clear* that they immediately recognized it as a bug.  More than that, I was using RSpec in a way that one of the lead developers expected it to be used but another *did not*!  So I also exposed a "bug" in how the RSpec developers thought about their own project.

The result?  The a major bug in RSpec was fixed in **less than 24 hours**.

