import Turbolinks from 'turbolinks'
import HeaderVideo from '../js/header_video'
import semantic_js from '../semantic_ui/dist/semantic.min'  

Turbolinks.start()

header_video = new HeaderVideo

ready = ->
  header_video.setup()

  # Pricing Segment
  $('.pricing.segment .menu .item').tab()

  $('.request.demo').on 'click', (e) ->
    e.preventDefault()

    window.typeformEmbed.makePopup 'https://logik-works.typeform.com/to/SNKe5g',
       mode: 'popup'
       autoOpen: true
       autoClose: 350
       onSubmit: ->
         console.log 'Typeform successfully submitted'

# load on the initial page load
$ ->
  ready()

# load on every other page
document.addEventListener 'turbolinks:load', ready
