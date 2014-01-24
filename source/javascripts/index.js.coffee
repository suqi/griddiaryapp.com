$(document).on 'click', '[data-behavior~=load-video]', (event)->
  event.preventDefault()
  event.stopPropagation()
  $('.index-hero').replaceWith('<div class="index-hero"><iframe class="index-hero-video" src="https://player.vimeo.com/video/70110496?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff&amp;autoplay=1" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe></div>')
