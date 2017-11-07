import 'jquery'
import '../semantic_ui/dist/semantic.js'

$ ->
  $('.more.info').popup
    hoverable: true

  startup_transition = $('.card').transition({
      animation: 'pulse'
      reverse: 'auto'
      interval: 200
    })
  setTimeout(startup_transition, 8500)



