import Turbolinks from 'turbolinks'
import Reveal from '../js/reveal.js'
import HeaderVideo from '../js/header_video'
import semantic_js from '../semantic_ui/dist/semantic.min'  

Turbolinks.start()

header_video = new HeaderVideo

ready = ->
  analytics.page()
  header_video.setup()

  # activating reveal if we're on the revealed page
  if $('.reveal').length
    window.initialized = false
    Reveal.initialize()

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

    analytics.track 'opened modal',
      plan: $('.pricing .active span.plan').text()

    $('.demo.modal')
      .modal
        closable: true
        onApprove: ->

          form = $('.demo.modal form')[0]
          form.reportValidity()

          if form.checkValidity()
            analytics.track 'requested demo',
              email: $('.demo.modal form input[name="email"]').val()

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
