import Turbolinks from 'turbolinks'
import HeaderVideo from '../js/header_video'
import semantic_js from '../semantic_ui/dist/semantic.min'  

Turbolinks.start()

header_video = new HeaderVideo

ready = ->
  header_video.setup()

  # Dropdowns
  $('.ui.dropdown').dropdown()

  # Menu
  $('.hamburger').on 'click', (e) ->
    e.preventDefault()
    $('.ui.sidebar').sidebar('toggle')

  # Pricing Segment
  $('.pricing.segment .menu .item').tab()

  # Demo Request
  $('.request.demo').on 'click', (e) ->
    e.preventDefault()
    $('.demo.modal')
      .modal
        closable: true
        onApprove: ->

          form = $('.demo.modal form')[0]
          form.reportValidity()

          if form.checkValidity()
            $.ajax
              type: 'POST'
              headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
              url: '/demo/send_request/'
              data: $('.demo.modal form').serialize()
              dataType: 'json'
          else
            false

      .modal('show')

# load on the initial page load
$ ->
  ready()

# load on every other page
document.addEventListener 'turbolinks:load', ready
