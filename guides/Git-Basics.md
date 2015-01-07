# Git Basics

> Git is a tool with few real-life variants, if it seems confusing at first, congratulate yourself, it IS confusing and there is no better way to learn how to use it than by just jumping in.

Before you finish the CodeUnion's Web Fundamentals Workshop you will have significantly more experience with git, GitHub and version control than most students from other 'code camps'.  Weather you decide to pursue full time work as an engineer or you continue to tinker with the interwebs, being able to effectively collaborate with other developers and designers, not matter their level, will like unicorn magic.

**[Install Git on Mac/Windows/Linux][install-git]**


## Obtaining Remote Code — `git clone`

Cloning is the process of copying a remote repository of code and putting that copy on your local computer.

* You can clone any public repository on GitHub and any private repository you have been given access to.

<a href="http://quick.as/xw4qh0xr" target="_blank">
Click here to watch a screencast about cloning a repository from GitHub
<img src="http://cl.ly/image/2k051a0d2i31/Image%202014-06-01%20at%203.07.01%20PM.png" target="_blank"></a>


## Creating a 'fork' of a remote repository

**Forking** is the process of creating your own remote copy of someone else's remote repository on GitHub.  Your forked copy lives in your GitHub account and you can edit it independently without impacting the original, parent repository.  To fork a repository, visit that repository's page on GitHub and click the "Fork" button in the upper right-hand corner of the screen.  It will look like this:

![Screenshot of the "Fork" button on GitHub][github-fork-screenshot]

At CodeUnion, we use forking as a way for students to each have their own, independent copies of exercises, assignments, and projects.  Outside of an educational environment, forking is frequently used in the open source world to collaborate.  For example, if you found a bug in Rails and knew how to fix it, you would fork the [Rails repository on GitHub][rails-github], fix the bug on your own copy (i.e., fork), and let the Rails maintainers know that your copy contains a bug fix they might want to integrate.

<a href="http://quick.as/bbg8uybx" target="_blank">
Click here to watch a screencast about forking a repository on GitHub
<img src="http://cl.ly/image/1F041E3j3n1K/Image%202014-06-01%20at%205.49.18%20PM.png" target="_blank"></a>

## Remote Repositories

#### How to create a new remote repository, initialize a local working directory and connect the two.

<a href="http://quick.as/pzmji7q6" target="_blank">
Click here to watch a screencast about creating a new repository on GitHub
<img src="http://cl.ly/image/2T0d3S3z3L0z/Image%202014-06-01%20at%205.25.57%20PM.png" target="_blank"></a>

Git is a version control tool that can be initialized on many application directories in the unix environment.

1. Create a new repository.
1. Navigate to a local directory to store code for the repository.
1. Put this directory under version control

  ```
  git init
  ```

1. Add the <b>origin</b> as a remote of the version control configuration.

  ```
  git remote add origin https://github.com/jcdavison/meerkat-chomp
  ```

1. Create a new file and add any code you need to

  ```
  touch hello.rb
  ```

1. Track the file

  ```
  git add hello.rb
  ```

1. Commit the file

  ```
    git commit -m "Added hello.rb"
  ```

1. Push the push local changes to the repo to the remote, aka, GitHub

  ```
  git push origin master
  ```

  Depending on how your local version of `git` if configure, you might only need to run

  ```
  git push
  ```

If everything goes well, you'll have something like looks similar to this:

<a href="http://cl.ly/image/0I0h2E0S3N1b" target="_blank">
<img src="http://cl.ly/image/0I0h2E0S3N1b/Image%202014-06-01%20at%203.39.33%20PM.png" target="_blank"></a>

## Committing Code — `git commit`

#### How to branch, edit and commit code.

A branch of a code repository is like a local fork, frequently, developers use branches to work on individual features or chunks of code.  Good branching enables an organization to effectively distribute work to developers who can attack that work independent of the movements of other developers.  Making efficient, informed 'commits' is a learned process that will enable other developers to better understand the progression a particular branch underwent.


**Basic Steps** involved in branching, editing and committing code.

> it may seem like a lot of steps, it is but after a few weeks, it will feel as natural as breathing.

<a href="http://quick.as/en1acv4j" target="_blank">
Click here to watch a screencast on branching, committing and pushing.
<img src="http://cl.ly/image/0R03201w3Z3M/Image%202014-06-03%20at%202.55.08%20PM.png" target="_blank"></a>



1. Create a new branch, name the branch according to the feature or purpose of the new branch.

  ```
  git checkout -b useful-relevant-branchname
  ```

  You can run `git branch` to determine which branch is currently "active."

1. Make useful edits to code as needed, save file.

1. Look at the **diff** (aka **changeset**)

  The **diff** or **changeset** describes, line-by-line, what the differences are between your code and the last commit.  You can see the diff by running

  ```
  git diff
  ```

  When in the diff interface, press `q` to quit or exit.

1. Tell 'git' to 'track' changes in a given file.

  ```
  git add dir/file_name.rb
  ```

1. Check status of branch, make sure you have tracked any/all changes you care about.

  ```
  git status
  ```

1. Commit changes, `git commit`, write a message `-m "smart message"`

  > Commit messages should have intelligent chunks of information that aid other developers in understanding the nature or purpose of the commit.

  > Your future self is also an 'other developer'.

  ```
  git commit -m "Used similar pattern from max for min method."
  ```

1. Verify status of branch and/or look at the log of commits

  ```
  git status
  ```

  ```
  git  log
  ```

  As with the "diff" interface, you can press `q` to quit the "log" interface.

1. If needed, push your local feature branch to GitHub

  ```
  git push origin useful-relevant-branchname
  ```

1. Visit GitHub and verify the commit(s).

## Merging Branches

#### The what and how of merging — `git merge specified-branch`

Merging is the process of combining the unique code of a particular branch into another specified branch.  It can be a little confusing at first, the remedy is to merge, merge and merge.

<a href="http://quick.as/8qb3s90w" target="_blank">
Click here to watch a screencast on merging.
<img src="http://cl.ly/image/3t04463L1X24/Image%202014-06-03%20at%203.27.03%20PM.png" target="_blank"></a>

#### Excellent explanation of how to merge changes from an **upstream** repository by [Travis Ingram](https://github.com/TravisIngram)

https://gist.github.com/TravisIngram/538ff6366c31dbc6168f

[rails-github]:https://github.com/rails/rails
[github-fork-screenshot]:http://f.cl.ly/items/0t0S1G2z0U1L1H3n182i/github-fork-screenshot.png
[install-git]:http://git-scm.com/book/en/Getting-Started-Installing-Git
