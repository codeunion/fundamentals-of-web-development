### How many words in a stream of tweets.

Let's assume that we want to know what the average word count of a tweet is.  We are going to build an application that queries the Twitter api for a collection of tweets.  We will then run a word counting function on all the tweets and aggregate the results.

#### Consider the Array
```json
  [ {"tweet1" => "this is a tweet"}, { "tweet2" => "I luve food"}, { "tweet3" => "I <3 startups"} ]
```
There are three tweets in this Array, the first tweet has a word count of 4, the second a word count of 3 and the third tweet has a word count of (how to interpret the '<3') ?

Create a sinatra application that:

- At the root "/", the application accepts a hashtag as an argument, something like #worldcup or #startuplife
- On the server, query the twitter api for as many tweets as you can get in one api call related to the hashtag input from the client.
- On the server build a class that represents a report, something that could aggregate details related to word count, make the class capture the date and the average word count and the total quantity of tweets counted.
- Ensure the full life cyle of CRUD behavior, index, show, create, edit(?), destroy can be enacted on report objects. Why does edit (?) have a question mark?
- Once the server has accepted the hashtag and run whatever code required to produce the above report object, display a report in the browser.
- Use d3.js or any other library you like to build a bar chart for each report object that displays the current report's average word count against the maximum and minimum word count from the tweet collection the report was generated from.


NOTES - You don't have to call your object "Report", make a choice about what you care about and what the class represents.  We chose report cause it sounds natural to us. Don't use the twitter gem.  Use the same style of api calls that were used in the [twitter command line app][twitter command line app] code that you may have written in the [text analysis][text analysis] project might be helpful too.  

[twitter command line app]:https://github.com/codeunion/twitter-client
[text analysis]:https://github.com/codeunion/text-analysis
