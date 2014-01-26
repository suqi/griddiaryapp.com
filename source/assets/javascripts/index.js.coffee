if window.matchMedia("(min-width: 768px)").matches
  $("a.gallery").colorbox(
    {
      rel:"gallery",
      scalePhotos: true,
      maxWidth: '90%',
      maxHeight: '90%'
    }
  )

