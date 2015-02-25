var longest_string = function(list) {
  var longest = list[0];

  list.forEach(function(item) {
    if (item.length > longest.length) {
      longest = item;
    }
  });

  return longest;
};

var input = ["a", "zzzz", "c"];
var expected = 'zzzz';

console.log(longest_string(input) == expected);
