$(document).ready(function() {
  $('select')
    .niceSelect()
    .on('change', function(event, value) {
    window.location = $(this).val()
  })
});
