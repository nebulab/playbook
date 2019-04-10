$(document).ready(function() {
  $('.nav-button').on('click', function() {
    $('body').toggleClass('js-show-nav');
  });
});
$(document).click(function(e) {
  if ((e.target != $('.nav')[0]) && (e.target != $('.nav-button')[0]) && ($('body').hasClass('js-show-nav'))) {
    var li_tags = $($('.nav')[0]).find('li');
    var a_tags = $($('.nav')[0]).find('a');
    for (var i = 0; i < li_tags.length; i++) {
      if (e.target == li_tags[i] || e.target == a_tags[i]) {
        return;
      }
    }
    $('body').toggleClass('js-show-nav');
  }
});

