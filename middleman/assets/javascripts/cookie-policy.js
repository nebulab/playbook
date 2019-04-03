$(function() {
  $('.cookie-message').cookieBar({
    closeButton: '.close-button'
  });

  if ($.cookie('cookiebarV2') != 'hide') {
    $(document).on('click', 'a', function(e) {
      if (e.target.hostname === location.hostname) {
        $('.close-button').click();
      }
    });
  }
});