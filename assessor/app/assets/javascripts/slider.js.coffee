# $(document).on "ready page:load page:fetch", ->
#   $sliders = $(".frame")
#   $sliders.each (el) ->
#     $el = $(this)
#     sly = new Sly($el,
#       # horizontal: false
#       # itemNav: "basic"
#       # smart: true
#       mouseDragging: true
#       touchDragging: true
#       releaseSwing: true
#       # elasticBounds: true
#       # scrollBar: $el.prev(".scrollbar")
#       scrollBy: 1
#       # dragHandle: true
#       # dynamicHandle: true
#       # forward: $el.find(".next")
#       # backward: $el.find(".prev")
#       # moveBy: 900
#       # cycleBy: "items"
#       # cycleInterval: 2000
#       # pauseOnHover: true
#       # speed: 700
#     )
#     sly.init()
#     # $el.on("mouseenter", ->
#     #   $(".prev, .next").fadeIn 100
#     #   return
#     # ).on "mouseleave", ->
#     #   $(".prev, .next").fadeOut 100
#     #   return

#     # Reload sly after the last image has loaded
#     # this is to account for the changing width of items when an image loads

#     #$el.find('.title').css('display', 'block');
#     # $el.find("img").one("load", ->
#     #   sly.init()
#     #   sly.reload()
#     #   return
#     # ).each ->
#     #   $(this).load()  if @complete
#     #   return

#     # Reload sly on page resize
#     $(window).resize (e) ->
#       sly.reload()