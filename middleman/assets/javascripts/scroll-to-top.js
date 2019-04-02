var visible = false;
//Check to see if the window is top if not then display button
$(window).scroll(function() {
  var scrollTop = $(this).scrollTop();
  if (!visible && scrollTop > 100) {
    $(".js-button-top").fadeIn();
    visible = true;
  } else if (visible && scrollTop <= 100) {
    $(".js-button-top").fadeOut();
    visible = false;
  }
});

//Click event to scroll to top
$(".js-button-top").click(function() {
  $("html, body").animate({
    scrollTop: 0
  }, 800);
  return false;
});
