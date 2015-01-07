## 20140730 - Class_01

### Summary

Welcome aboard!

### First Hour

Both session covered basically the same material during the first hour.

This class was split in two.   The first hour began with introductions, after which John got on his soap box and shared some of his hopes and expectations for the next Web Fundamentals workshop.

**The Goal**

The goal of the WF workshop is to provide students with a basic understanding of what web applications are and the skills necessary to conceive, code, and deploy a basic [CRUD](http://en.wikipedia.org/wiki/Create,_read,_update_and_delete) application using the [Sinatra framework](http://ruby.about.com/od/sinatra/a/sinatra1.htm).

Students will explore basic programming concepts through the use of the Ruby language and gain an understanding of how websites communicate with one another through the [HTTP protocol](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods).

**Communication is Key**

As such, we should strive to remove as many of the barriers that impede effective communication as possible.

Be mindful of your environment and the potential impact it has on others.
* Maintain a video stream
	* Helps John and Jesse gauge understanding
	* Fosters connection amongst the class
- Keep your mic open ** NO MUTING and MAINTAIN A VIDEO SIGNAL **
	- Be aware of environment noise / personal space
	- Consider a headset

#### Students are responsible for their video and audio quality.

**Flow**

Class materials will be distributed periodically through the [CU GitHib](https://github.com/codeunion) repository. In addition, John or Jesse will send out To-do’s that, like most things at CU, aren’t mandatory but encouraged.

Learning how to develop software is an amalgamation of reading, writing and a little bit of arithmetic.  Reading for comprehension, whether documentation, tutorials, posts, or actual code, is important.

Writing code, requesting and receiving feedback is key to learning how to program.

**_Momentum + Feedback =  Progress_**
* Code => Feedback => Code => Feedback => Code

Once you’ve completed your assigned tasks, send in a request for a ‘Checkride’.

Tasks assigned to students can be viewed in the [**issues**](https://github.com/codeunion/fundamentals-of-web-development/issues) section of the [Fundamentals of Web Development](https://github.com/codeunion/fundamentals-of-web-development) repository.

**Blogging**

Setting up and maintaining an online journal is a useful way to find, explore and articulate your own understanding of a given topic.  It also serves as a way for others (John or Jesse) to gage how well you know it and, potentially, provide advice or support when needed.

It doesn’t have to be fancy or complicated.  If you want to try to set up a Jekyll site and deploy via GitHub Pages, great, but [Tumblr](https://www.tumblr.com), [Medium](https://medium.com), [Blogger](http://blogger.com) are all perfectly fine, too.  The important part of blogging is giving CodeUnion leaders the opportunity to hear a student's personal voice and understanding of a given topic.

**Random**

There was some discussion about what constitutes a [web applications](http://en.wikipedia.org/wiki/Web_application) and what’s meant by the terms client and server.  A simple way to think about them is clients request, servers provide. Web browsers and a local mobile app are typically viewed as the clients while the services they connect to, the servers.


#### Second Hour

**First Session**

During the second hour, the folks in the first session reviewed the [Text Analysis](https://github.com/codeunion/text-analysis/) project.  Scott volunteered to act as the guinea pig.  With John’s assistance he forked and then cloned the repo to his machine.  The class spent time reviewing the documentation in the README and on the [Wiki](https://github.com/codeunion/text-analysis/wiki/Iterations) page to gain an understanding of the expected outcomes.  They then dove into Sublime Text and talked about the first iteration and what was needed to implement the basic count statistics.
They wrote a little bit of [**_pseudocode_**](../../../guides/Problem-Solving-in-Ruby.md), a basic, high level description, of the problem and steps that might be needed to solve it.

**Second Session**

The second session spent time working with Git.  Kevin posed a great question about tracking and verifying changes to a file or repo. Using one of his own repositories, the class walked through the process of;


### Git Resources http://git-scm.com/

* Verifying the status
	* `git status`
* Verifying the branch
	* `git branch`
* Changing branches
	* `git checkout ‘branch-name’`
* Adding files to be committed
	* `git add .`
	* `git add ‘file-to-add’`
* Committing files
	* `git commit`
	* `git commit -m ‘commit-message-here’`
* Adding files to a [stash](http://git-scm.com/book/en/Git-Tools-Stashing)
	* `git stash`
* Merging changes between branches, merge the other branch into the current branch.
	* `git merge <branch-name>`
* Pushing changes to the master
	* `git push origin master`
	* `git push origin <branch-name>`
* Checking for a stash
	* `git stash list`
* Taking files out of a stash
	* `git stash pop stash@{0}`
* Committing multiple files
	* no different than regular commit

Towards the end of the session, John gave a high level overview of the Text Analysis project.

### https://github.com/codeunion/text-analysis


-- these notes were originally written by https://github.com/TravisIngram/ and were slightly edited by https://github.com/jcdavison
