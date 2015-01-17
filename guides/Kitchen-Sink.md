# the ```kitchen sink```

A place where we can put hopefully useful content that may or may not have a structural home yet. we'll post things here in a hap-hazard fashion to give ya'll access to them before we figure out exactly what to do with it.


## ruby iteration using ```for element in elements```


```ruby
  elements = [ 1,2,3,4,"home", ["nested-array"], {:key => "value"} ]

  for element in elements do
    p element
    p element.class
  end
```


<a href="http://quick.as/pzmji8kr" target="_blank" name="rubyforloop"> Click here to watch a screencast on iteration with a for loop.
<img src="http://cl.ly/image/3F3o083v0B2h/Image%202014-06-05%20at%2011.18.30%20AM.png" target="_blank"></a>


## If you ever wanted to build a ruby gem...

http://guides.rubygems.org/make-your-own-gem/


## Indentation

### PLEASE, PLEASE FOR THE :heart: of :monkey: :monkey: :monkey: :monkey:

### Make Sure you get your indentation set!


Ruby coders expect code to use indentation settings based on 'soft-tabs'. 'Soft-tabs' means that a tab character is translated to two spaces. It is difficult to control for how to attain this state with all coding editors but the below screenshots demonstrate the how to attain this state with Sublime Text 3. :thumbsup:

You can use the handy `Spaces` dialogue tab in any normal Sublime window pane like the below.

![http://cl.ly/image/3f251v000x3z/Image%202014-07-28%20at%2012.25.12%20PM.png](http://cl.ly/image/3f251v000x3z/Image%202014-07-28%20at%2012.25.12%20PM.png)

![http://cl.ly/image/15022r0V0A14/Image%202014-08-06%20at%2011.32.31%20AM.png](http://cl.ly/image/15022r0V0A14/Image%202014-08-06%20at%2011.32.31%20AM.png)

**If you want to verify you set your indentation correctly:**

Head to Sublime Text => Preferences => Settings - User

![http://cl.ly/image/1n3K1I2Q3F20/Image%202014-08-06%20at%2011.37.35%20AM.png](http://cl.ly/image/1n3K1I2Q3F20/Image%202014-08-06%20at%2011.37.35%20AM.png)


Which will open a file that looks like:

![http://cl.ly/image/1n173E3Y242F/Image%202014-08-06%20at%2011.35.49%20AM.png](http://cl.ly/image/1n173E3Y242F/Image%202014-08-06%20at%2011.35.49%20AM.png)

You want to make sure your `Preferences.sublime-settings` file has at least the below lines. It may have other stuff too, that is fine.

```json
{
	"tab_size": 2,
	"trim_trailing_white_space_on_save": true,
}
```

For more on how sublime settings work, read [sublime settings.][sublime-settings]

## Object Literal(s)

If you find yourself writing things like

```ruby
some_variable = Hash.new
# or
some_other_variable = Array.new
```

Consider using the **Object Literal** like the below.

```ruby
some_variable = {}
# or
some_other_variable = []
```


[sublime-settings]:https://www.sublimetext.com/docs/3/settings.html
