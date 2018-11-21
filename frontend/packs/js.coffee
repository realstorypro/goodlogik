import HeaderVideo from '../js/header_video'
import semantic_js from '../semantic_ui/dist/semantic.min'  

header_video = new HeaderVideo

$ ->
  header_video.setup()

  # Pricing Segment
  $('.pricing.segment .menu .item').tab()
