if window.matchMedia("(min-width: 768px)").matches
  $("a.gallery").colorbox(
    {
      rel:"gallery",
      scalePhotos: true,
      maxWidth: '90%',
      maxHeight: '90%'
    }
  )

$('.press').owlCarousel
  items: 1
  itemsDesktop: false
  itemsDesktopSmall: false
  itemsTablet: false
  itemsTabletSmall: false
  slideSpeed: 300
  paginationSpeed: 400
  pagination: true
  autoPlay: true

$(document).on 'click', '[data-behavior~=smooth-scroll]', (event)->

  $('html, body').animate({
    scrollTop: $($(this).attr('href')).offset().top
  }, 1000)

  event.preventDefault()
