/*
  The key idea is to assume as little as possible about
  the underlying DOM structure, i.e., what elements we
  need, what classes they should have, and how they're
  arranged in the document relative to each other.

  In this case, we're only assuming the following:
    1. The user has added a "modal" class to the
       element they want to be a modal dialog.
    2. To activate a modal dialog, there should be
       an element with the property 'data-toggle="modal"'
       and that element's 'data-modal' attribute
       specifies the ID of the element to turn into a
       modal dialog.
*/

$(document).ready(function() {
  $(document).on('keydown', function(e) {
    // ASCII code for "ESC" is 27.
    // See: http://www.asciitable.com/
    if ($('.modal').is(':visible') && e.which == 27) {
      $('.modal').hide();
    }
  });

  $('.show-modal').on('click', function(e) {
    // Same as: var modal_id = $(this).attr('data-modal');
    var modal_id = $(this).data('modal');
    $(modal_id).show();
  });

  $('.modal .modal-background, .modal .modal-close').on('click', function(e) {
    // Remember, "this" is the DOM node THAT WAS CLICKED.

    $(this).closest('.modal').hide();
    e.preventDefault();
  });
});
