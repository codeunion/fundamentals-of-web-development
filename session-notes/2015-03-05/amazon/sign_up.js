$(document).ready(function() {
  function showErrorMessage(inputFieldId, message) {
    $(inputFieldId).siblings('.error-message').text(message);
  }

  function clearErrorMessage(inputFieldId) {
    $(inputFieldId).siblings('.error-message').text("");
  }

  function validateFirstName(inputValue) {
    if (inputValue.length === 0) {
      showErrorMessage('#first_name', 'First name must not be blank.');
    } else {
      clearErrorMessage('#first_name');
    }
  }

  // Handle unfocus of first name input element
  $('#first_name').on('blur', function() {
    validateFirstName($(this).val())
  });
});
