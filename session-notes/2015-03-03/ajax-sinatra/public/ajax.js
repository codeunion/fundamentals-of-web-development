$(document).ready(function() {
  $("#send_ajax").on('click', function(event) {
    event.preventDefault();

    // Send an POST AJAX request to /ajax
    $.ajax({
      url: '/ajax',
      type: 'POST',
      dataType: 'json',
      data: { name: "John", location: "Boston" }
    }).done(function(response) {
      console.log(response);
    });
  });
});
