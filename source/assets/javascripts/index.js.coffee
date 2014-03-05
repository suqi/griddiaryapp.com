if window.matchMedia("(min-width: 768px)").matches
  $("a.gallery").colorbox(
    {
      rel:"gallery",
      scalePhotos: true,
      maxWidth: '90%',
      maxHeight: '90%'
    }
  )

$(".screenshots").owlCarousel
  navigation: false
  slideSpeed: 300
  paginationSpeed: 400
  singleItem: true
  pagination: false
  autoPlay: true
  stopOnHover: true

$('.index-quotes').owlCarousel
  items: 2
  itemsDesktop: false
  itemsDesktopSmall: false
  itemsTablet: false
  itemsTabletSmall: false
  slideSpeed: 300
  paginationSpeed: 400
  pagination: true
  autoPlay: true
