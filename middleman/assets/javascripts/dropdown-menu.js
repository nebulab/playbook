$(document).ready(function() {
  if($(".nav-button").is(":visible")) {
    $('.submenu').hide();
  };

    $('.nav-list-item').click(function(event) {
        event.stopPropagation();
        $('> .submenu', this).toggle();
        $(this).toggleClass("opened");
    });
    
    $(".nav-button").click(function(){
       $(".sidebar").toggle();
       $("body").toggleClass("js-show-nav");
   });
});
