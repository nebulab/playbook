// Smooth anchor scroll
$(document).ready(function(){

  var $root = $('html, body');

  $('a[href^="#"]').on('click', function(event) {
    if (this.hash !== "") {
      event.preventDefault();

      var hash = this.hash;

      $root.animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
        window.location.hash = hash;
      });
    }
  });
});
