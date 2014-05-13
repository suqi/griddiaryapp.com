if window.matchMedia("(min-width: 768px)").matches
  $(".gallery a").colorbox(
    {
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

$(document).on 'click', '[data-behavior~=play-video]', (event)->
  videoIframe = '<iframe src="https://player.vimeo.com/video/94643830?autoplay=1" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>'

  $('.video .preview')
    .css('background', '#fff')
    .html(videoIframe)
  $('.video .preview').fitVids()

  $('.video button').hide()

  event.preventDefault()
