Cascading Style Sheets, commonly known as CSS, is a rule-based, descriptive
programming language to customize the visual appearance of an html document.

An HTML document
[links](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link#Summary)
to stylesheets, which the browser requests as it [parses](http://en.wikipedia.org/wiki/Parsing) the HTML of the page.
Once it downloads the stylesheet, it adds the rules the stylesheet defined to
the list of style rules it will follow when it presents the HTML page to the
user. The process by which browsers parse HTML and CSS to present styled content
to the user is known as [the rendering
engine](http://taligarsiel.com/Projects/howbrowserswork1.htm#The_rendering_engine).

There are 3 main concepts we need to understand to use CSS:

* [Properties](#basics-of-properties)
  define the style rules that the rendering engine will follow
* [Selectors](#basics-of-selectors)
  tell the browser which elements to apply the style to
* [Layout](#basics-of-layout) is how elements take up space, are positioned,
  and flow around each other on the page.

Before we dive into each of these let's look at some example HTML and CSS:

Create a directory and place the following two files into it:


Name this `style.css`
```
body {
  font-family: Helvetica, Arial, sans-serif;
}

h1 {
  font-weight: bolder;
}

p.subheading {
  font-style: italic
}
```

Name this `index.html`:

```
<!doctype html>
<head>
  <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
</head>
<body>
<h1>Yo Dawg</h1>
<p class='subheading'>How's Life?</p>

<p>Pretty great, ya'll!</p>

</body>
</html>
```

Now, open the `index.html` file in your browser. Look how beautiful that
helvetica is! You're on your way to being the premier designer of the age!


### Basics of Properties

There are [hundreds of
properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference#Properties) to style
a web page. Ranging from the approachable
[`font-weight`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight) to
the brain-melting
[`transformations`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function).

The basic syntax of a css property is `property: value;`. If you wanted to
center text, you would use the `text-align` property with the `center` value;
like so: `text-align: center;`

Properties are grouped within curly braces: `{ property-1: value1; property-2:
value2; }`. While putting several properties on a single line is valid CSS;
it's a bit hard to skim, so most css files have a single property per line:

```
{
  property-1: value1;
  property-2: value2;
}
```

Sometimes properties take multiple values; for instance
[`border`](https://developer.mozilla.org/en-US/docs/Web/CSS/border#Values)
takes 3 different values: border width, border style, and color.

When a property accepts multiple values you provide them as an ordered space
seperated list. To set the border width, style, and color all at once we could
use `border: 5px dashed blue;`

Sometimes properties appear to take multiple values, but really are taking a
list as their value. For example,
[`font-family`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-family#Example_1):
`font-family: "Gil sans", Helvetica, arial, sans-serif;`.

Here, the `font-family` property is taking a prioritized list of fonts to use.
If the one first in the list isn't found, the second will be used and so on and
so forth. You'll also notice that we put quotation marks(`"`) around the name
of the font `Gil sans`. This is to prevent css from interpreting the space in
the fonts name as a value seperator.

### Basics of Selectors

[Selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference#Selectors)
are how we apply properties to html. The most common selectors are:

* Basic Selectors find elements based on their tag type, id, class, wildcard,
  or attributes. These are the core building blocks of CSS selectors.
* Combinator Selectors find elements based on their relationship to another
  element (parent, child, sibling). These are the glue that lets you target
  more specific items on the page.
* [Pseudo-Classes](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes)
  finds elements based upon their status (`:hover`, `:visited`, `:even`, etc)

#### Basic Selectors

Basic selectors are the most commonly used kinds of selectors. They're the
backbone of every css file. Learn to love em:

* `h1` - tag type selector. Finds all h1 tags on the page; i.e. `<h1>This
  is the biggest text EVER!</h1>`
* `.button` - class selector. Finds all elements on the page with a `class` of
  `button`; i.e. `<a class="button" href="/sign-up">Sign up!</a>`
* `#contact-us` - id selector. Finds the first element of any type on the page
  with an `id` of `contact-us`; i.e. `<p id="contact-us">Go to Old Oakland
  and shout "WHERE'S ZEE?!?" Pretty sure I'm there.</p>`
* `*[type="email"]` - wildcard plus attribute selector. Finds all elements with
  a `type` attribute of `email`; i.e. `<input type="email"
  name="subscriber_email" />` or `<p type="email">Wat</p>`


#### Combinator Selectors
[Combinator
selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference#Selectors)
are used in conjunction with basic selectors to select elements based on their
relationship to one antoher. This is useful for applying styles to specific
sections of a page. The two most common are descendent selectors and child
selectors:

* `body > h1` - Child selector. Finds only h1's that are a direct child of the
  `body`; i.e. `<body><h1>Hi, you found me!</h1><div><h1>But not me
  :'(</h1></div></body>`
* `nav li` - Descendent selector. Finds all the `li` elements within any `nav` element, no
  matter how deeply nested they are; i.e. `<nav><ul><li>Found me!<ol><li>Found
  me!</li></ol></li></ul></nav>`


### Basics of Layout

A web pages layout is controlled by the positioning of its elements and their
box model:

* [Positioning
  schemes](http://www.w3.org/TR/css3-positioning/#positioning-schemes)
  dicate where elements are located on the page and how they impact and are
  impacted by each other.

* The [box model](https://developer.mozilla.org/en-US/docs/Web/CSS/box_model)
  dictates how elements sizes are determined.

These concepts allow incredible flexibility in layout. However, for now I would
recommend getting familiar with [normal
flow](http://www.w3.org/TR/CSS2/visuren.html#normal-flow) and use `box-sizing:
border-box` as you hone your css skills.

Here's a two column layout:

Name this `style.css`
```
html {
  height: 100%;
}

body {
  margin: 0;
  padding: 0;
  height: 100%;
}

main, nav, div {
  display: block;
  box-sizing: border-box;
  margin: 0 10px;
  padding: 0;
}

nav {
  background-color: yellow;
  float: left;
  width: 375px;
}

main {
  background-color: blue;
  float: left;
  width: 605px;
}

div#content {
  overflow: auto;
  background-color: red;
  margin-left: auto;
  margin-right: auto;
  width: 1020px;
  height: 100%;
}
```

Name this `index.html`
```
<!doctype html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
</head>
<body>
<div id="content">
  <nav>
    <h4>Some Cool Links</h4>
    <ul>
      <li><a href="http://www.google.com">Google</a></li>
      <li><a href="http://www.twitter.com">twitter</a></li>
    </ul>
  </nav>

  <main>
  <h1>I am a blarg</h1>
  <p>I have content</p>
  </main>
</div>
</body>
</html>
```

Look into each property. Play around with this and see how to change the
layout.

### Feeling Overwhelmed?

Don't fret! We don't expect you to learn everything about all of them. Instead,
follow the same approach to learning css as you do ruby! Experiment, use the
[docs](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference), focus on
core principles, and ask for feedback and clarification!