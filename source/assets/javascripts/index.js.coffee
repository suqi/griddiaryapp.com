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

$ ->
  $('[data-behavior~=play-video]').one 'click', (event)->
    $this = $(this)
    videoUrl = $this.data('video-url')
    videoIframe = "<iframe src='#{videoUrl}' width='500' height='281' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>"

    $this.find('.preview')
      .css('background', '#fff')
      .html(videoIframe)
    $this.find('.preview').fitVids()

    $this.find('button').hide()

    event.preventDefault()

$('.nav-handle').on 'click', (e)->
  $('header nav').toggleClass('active')
  e.stopPropagation();
  e.preventDefault()
$(document).on 'click', (e)->
  $('header nav').removeClass('active')
