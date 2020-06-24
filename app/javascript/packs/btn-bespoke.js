$(function() {
  $( ".btn-bespoke" ).click(function() {
    $( ".btn-bespoke" ).addClass( "onclic", 250, validate);
  });

  function validate() {
    setTimeout(function() {
      $( ".btn-bespoke" ).removeClass( "onclic" );
      $( ".btn-bespoke" ).addClass( "validate", 450, callback );
    }, 2250 );
  }
    function callback() {
      setTimeout(function() {
        $( ".btn-bespoke" ).removeClass( "validate" );
      }, 1250 );
    }
  });