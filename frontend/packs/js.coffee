import Turbolinks from 'turbolinks'
import HeaderVideo from '../js/header_video'
import semantic_js from '../semantic_ui/dist/semantic.min'  

Turbolinks.start()

header_video = new HeaderVideo

ready = ->
  header_video.setup()

  # Pricing Segment
  $('.pricing.segment .menu .item').tab()

# load on the initial page load
$ ->
  ready()

# load on every other page
document.addEventListener 'turbolinks:load', ready
