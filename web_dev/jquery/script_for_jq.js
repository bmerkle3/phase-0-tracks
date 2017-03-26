// window.onload = function() {
//      alert( "welcome" );
//  }


$('p:eq(2)').css('border', '4px solid red');

$('button').slideUp(500).show(800);

// $('#dis').fadeOut(800);

$(document).ready(function() {
  $('button').click(function() {
    $('#dis').fadeOut(800);
  });
});

$('img').delay(1900).fadeOut(500, function() {
    $(this).attr('src', 'images/green_tracks.jpeg').fadeIn(700);
     
      
});

