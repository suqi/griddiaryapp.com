if window.matchMedia("(min-width: 768px)").matches
  $("a.gallery").colorbox(
    {
      rel:"gallery",
      retinaImage:true,
      retinaUrl:true
    }
  )

