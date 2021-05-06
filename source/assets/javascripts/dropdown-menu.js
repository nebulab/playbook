$(document).ready(function() {
    $('.nav-list-item > a').click(function(event) {
        event.stopPropagation();
        $(this).parent().find('.submenu').first().fadeToggle('linear');
        $(this).parent().toggleClass('opened');
    });

    $(".nav-button").click(function(){
       $(".sidebar").toggle();
       $("body").toggleClass("js-show-nav");
   });
});
