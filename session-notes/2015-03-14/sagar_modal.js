var toggleModal = function() {
  $('#create-group-form').hide();
  $('#confirm-group').show();
}

$(document).ready(function() {
  $('#create-group-form').on('submit', function(event) {
    event.preventDefault();

    var formData = $(this).serialize();

    toggleModal();

    $('#confirm-group-button').on('click', function(event) {
      $.ajax({ url: '/create_group', type: 'POST', data: formData });
    });
  })
});
