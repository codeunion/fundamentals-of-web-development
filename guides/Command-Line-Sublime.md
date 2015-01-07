## ```subl .```

> Is it your wish to possess this kind of power?

Getting Sublime Text 3 to run from the command line is not magic.  The [original documentation][sublime] assume a relatively high degree of familiarity with the unix environment and omits key details.  We will attempt to clarify this process.

##### Bill's words to the wise...

  When you see things like "/Applications/yaydayd/moreyadyady", the "" are mandatory and generally speaking, paying attention to all details whether or not the detail means anything to you, will make you a happier coder.

#### In order to run sublime from the command line ```subl .```

Where ```subl``` represents the command to open sublime and the ```.``` is an argument, the argument represents **what** to open with sublime, ```.``` representing the contents of the current directory but one could open any location they cared about.  

For example  running ```subl ~/Dropbox/code/ruby_example.rb``` would tell sublime to open the file **ruby_example.rb** stored in ```~/Dropbox/code/```

The [original sublime documentation][sublime] indicates that running below line of code at your bash prompt will enable a user to open sublime from the command line.

```shell
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

This code is creating a symlink between the actual **subl** executable and the ```~/bin``` directory that can be called upon by typing ```subl``` at the bash prompt from anywhere inside your file system.  This code makes some assumptions about you the programmer.  The above line may or may not work 'out of the box'.  The below tutorial will take you through all the steps required to make the above line of code work.  If things stop working for you, please email <stuck@codeuion.io>


#### Assumptions The Above Makes About You the Programmer.

1.  Your computer has the directory ```~/bin``` which is the same as ```/Users/yourusername/bin``` and in the case of John Davison, ```~/bin``` is the same as ```/Users/jd/bin```.

1.  ```~/bin``` has been added to your ```PATH```

1. You know what the ```PATH``` is.

Lucky for you, we don't live in a world dominated by assumptions about the technical state of the people we interact with.


## Step by Step Instructions required to run Sublime from the command line.

1. Check that you have ```~/bin``` available to your machine.

  ```shell
    ls ~/bin
  ```

1. Create ```~/bin``` if it doesn't exist.

  ```shell
    mkdir ~/bin
  ```

  ![http://cl.ly/image/3Z1S343Y3U3G/Image%202014-07-23%20at%202.03.08%20PM.png](http://cl.ly/image/3Z1S343Y3U3G/Image%202014-07-23%20at%202.03.08%20PM.png)  

1. Verify that you have Sublime Text 3 installed correctly on your system.

  ```shell
    ls "/Applications/Sublime Text.app/Contents/SharedSupport/bin/"
  ```
   ![http://cl.ly/image/4517340U0O0I/Image%202014-07-23%20at%202.08.07%20PM.png](http://cl.ly/image/4517340U0O0I/Image%202014-07-23%20at%202.08.07%20PM.png)

  If you don't have Sublime installed, please visit http://www.sublimetext.com/3  
  
1. Create a symlink between the actual sublime executable and ```~/bin/subl```

  ```shell
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
  ```

1. Caveat Step, verify that you have ```~/bin/subl``` in your ```PATH```

  The ```PATH``` is a list of locations that unix will for programs that correspond to the commands you write in your terminal.

  ```shell
    echo $PATH
  ```

  Look at the output of the above command and attempt to find something that looks like ```:/Users/yourusername/bin:```.  Note, **yourusername** will show whatever your actual user name is.  John Davison's machine's username at time of this publication was **jd** and therefore, his validated path contained ```:/Users/jd/bin:```

    ![http://cl.ly/image/242d1M0U3W0V/Image%202014-07-23%20at%202.34.57%20PM.png](http://cl.ly/image/242d1M0U3W0V/Image%202014-07-23%20at%202.34.57%20PM.png)

  If you have ```/Users/yourusername/bin``` in your path,  type ``` subl ``` auto-magically you should find sublime opening a new window and/or starting if it wasn't already running.

  If you do not have ```/Users/yourusername/bin``` in your path, follow the below instructions to add it to your ```PATH```.
  1. Ensure your mac will show all hidden files and folders in finder.

    Any file or folder that starts with a `.` is 'hidden' for example ```.bash_profile``` and ```.git/```

    1. Run ```defaults write com.apple.finder AppleShowAllFiles YES``` in the terminal

    1. Run ```killall -HUP Finder``` in the terminal.

    1. Run ```defaults write -g AppleShowAllFiles YES``` in the terminal.

          ![http://cl.ly/image/2O1T0x1h3h2U/Image%202014-07-23%20at%203.11.13%20PM.png](http://cl.ly/image/2O1T0x1h3h2U/Image%202014-07-23%20at%203.11.13%20PM.png)
    1. Restart and open Sublime

  1. Open the file ```.bash_profile``` located in your 'home' directory

      ![http://cl.ly/image/282W1A1G271P/Image%202014-07-23%20at%203.13.03%20PM.png](http://cl.ly/image/282W1A1G271P/Image%202014-07-23%20at%203.13.03%20PM.png)
  1. Add ```export PATH=$HOME/bin:$PATH``` to the top ```.bash_profile```, don't worry about other information that may be present in ```.bash_profile``` and don't worry if the contents of your ```.bash_profile``` do not perfectly match the contents of the below screenshot.  

        ![http://cl.ly/image/3T0t0b351j2f/Image%202014-07-23%20at%203.18.49%20PM.png](http://cl.ly/image/3T0t0b351j2f/Image%202014-07-23%20at%203.18.49%20PM.png)
  1. Save the changes you just made to ```.bash_profile```, close the file.  

  1. Restart your terminal and verify that ```/Users/yourusername/bin``` appears when you run ```echo $PATH```

      ![http://cl.ly/image/08073w373I24/Image%202014-07-23%20at%203.24.04%20PM.png](http://cl.ly/image/08073w373I24/Image%202014-07-23%20at%203.24.04%20PM.png)
  1. You should now be able to type ```subl``` at the command line and have sublime open.  You can type ```subl .``` to make sublime open the contents of the current working directory as well.

  1. You can verify that all of the above has worked by typing ```which subl``` and get output that looks similiar to the below, but instead of ```/Users/jd/bin/subl``` you should see ```/Users/yourusername/bin/subl```

      ![http://cl.ly/image/0u2A3p2X2z1v/Image%202014-07-23%20at%203.37.20%20PM.png](http://cl.ly/image/0u2A3p2X2z1v/Image%202014-07-23%20at%203.37.20%20PM.png)





[sublime]:http://www.sublimetext.com/docs/3/osx_command_line.html
