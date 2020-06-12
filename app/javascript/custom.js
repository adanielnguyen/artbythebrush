// ===Project===
function projectMasonaryLayout() {
  if ($('.masonary-layout').length) {
      $('.masonary-layout').isotope({
          layoutMode: 'masonry'
      });
  }
  if ($('.post-filter').length) {
      $('.post-filter li').children('.filter-text').on('click', function() {
          var Self = $(this);
          var selector = Self.parent().attr('data-filter');
          $('.post-filter li').removeClass('active');
          Self.parent().addClass('active');
          $('.filter-layout').isotope({
              filter: selector,
              animationOptions: {
                  duration: 500,
                  easing: 'linear',
                  queue: false
              }
          });
          return false;
      });
  }

  if ($('.post-filter.has-dynamic-filters-counter').length) {
      // var allItem = $('.single-filter-item').length;
      var activeFilterItem = $('.post-filter.has-dynamic-filters-counter').find('li');
      activeFilterItem.each(function() {
          var filterElement = $(this).data('filter');
          var count = $('.filter-layout').find(filterElement).length;
          $(this).children('.filter-text').append('<span class="count">' + count + '</span>');
      });
  };
}




//Sortable Masonary with Filters
function sortableMasonry() {
  if($('.sortable-masonry').length){

      var winDow = $(window);
      // Needed variables
      var $container=$('.sortable-masonry .items-container');
      var $filter=$('.filter-btns');

      $container.isotope({
          filter:'*',
           masonry: {
              columnWidth : '.masonry-item'
           },
          animationOptions:{
              duration:500,
              easing:'linear'
          }
      });


      // Isotope Filter 
      $filter.find('li').on('click', function(){
          var selector = $(this).attr('data-filter');

          try {
              $container.isotope({ 
                  filter	: selector,
                  animationOptions: {
                      duration: 500,
                      easing	: 'linear',
                      queue	: false
                  }
              });
          } catch(err) {

          }
          return false;
      });


      winDow.on('resize', function(){
          var selector = $filter.find('li.active').attr('data-filter');

          $container.isotope({ 
              filter	: selector,
              animationOptions: {
                  duration: 500,
                  easing	: 'linear',
                  queue	: false
              }
          });
      });


      var filterItemA	= $('.filter-btns li');

      filterItemA.on('click', function(){
          var $this = $(this);
          if ( !$this.hasClass('active')) {
              filterItemA.removeClass('active');
              $this.addClass('active');
          }
      });
  }
}



//Masonary
function enableMasonry() {
  if($('.masonry-items-container').length){

      var winDow = $(window);
      // Needed variables
      var $container=$('.masonry-items-container');

      $container.isotope({
          itemSelector: '.masonry-item',
           masonry: {
              columnWidth : '.masonry-item.col-lg-4'
           },
          animationOptions:{
              duration:500,
              easing:'linear'
          }
      });

      winDow.bind('resize', function(){

          $container.isotope({ 
              itemSelector: '.masonry-item',
              animationOptions: {
                  duration: 500,
                  easing	: 'linear',
                  queue	: false
              }
          });
      });
  }
}
enableMasonry();




//=== Event Carousel ===
function eventCarousel () {
  if ($('.event-carousel').length) {
      $('.event-carousel').owlCarousel({
          dots: true,
          loop: true,
          margin: 30,
          stagePadding: 0,
          nav: false,
          navText: [
              '<span class="icon-arrow"></span>',
              '<span class="icon-arrow1"></span>'
          ],
          autoplayHoverPause: false,
          autoplay: 6000,
          smartSpeed: 1000,
          responsive:{
              0:{
                  items:1
              },
              600:{
                  items:1
              },
              800:{
                  items:1
              },
              1024:{
                  items:1
              },
              1100:{
                  items:1
              },
              1200:{
                  items:2
              }
          }
      });    		
  }
}

