import Vue from 'vue/dist/vue.esm'
import vue_babylonjs from 'vue-babylonjs'
import Cover from '../js/cover.vue'
import semantic_js from '../semantic_ui/dist/semantic.min'


Vue.use(vue_babylonjs)

$ ->
  cover = new Vue
    el: document.getElementById('cover'),
    render: (h) ->
      h(Cover)

  analytics.page()

  # Visibility Animations
  $('.features.fragment .main.feature').visibility
    once: true
    continuous: false
    onTopVisible: ->
      $(@).css 'opacity', 1

  $('.features.fragment .top.frame').visibility
    once: true
    continuous: false
    onTopVisible: ->
      $(@).css 'opacity', 1
      $('.features .bottom.frame').css 'opacity', 1

  # Dropdowns
  $('.ui.dropdown').dropdown()

  # Tabs
  $('.tabular .item').tab()

  # Shapes
  $('.shape').shape
    duration: 350

  # Shapes Click
  $('.shape .card').on 'click', (e) ->
    $(@).parents('.shape').shape('flip left')

  # Setting Sidebar
  $('.ui.sidebar').sidebar()

  # Menu
  $('.hamburger').on 'click', (e) ->
    e.preventDefault()
    $('.ui.sidebar').sidebar('toggle')

  # Sales Modal
  $('.sales.inquiries').on 'click', (e) ->
    e.preventDefault()

    $('.ui.sidebar').sidebar('hide')
    analytics.track 'opened sales modal'

    $('.sales.modal')
      .modal
        onShow: ->
          $('.content-holder').css('opacity', 0)
        onHide: ->
          $('.content-holder').css('opacity', 1)
        onApprove: ->

          form = $('.modal.sales form')[0]
          form.reportValidity()

          if form.checkValidity()
            analytics.track 'requested sales inquiry',
              email: $('.modal.sales form input[name="email"]').val()

            $.ajax {
                type: 'POST'
                headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
                url: '/requests/demo/'
                data: $('.sales.modal form').serialize()
                dataType: 'json'
            }

            $('.content-holder p:not(.text)').remove()
            $('.content-holder h1').text('Demo Request Sent')
            $('.content-holder p.text').text('Thank you for your interest. We will be reaching out shortly.')
          else
            false

      .modal('show')


  # Discovery Modal
  $('.discovery.inquiries').on 'click', (e) ->
    e.preventDefault()

    $('.ui.sidebar').sidebar('hide')
    analytics.track 'opened discovery modal'

    $('.discovery.modal')
      .modal
        onApprove: ->

          form = $('.modal.discovery form')[0]
          form.reportValidity()

          if form.checkValidity()
            analytics.track 'requested discovery inquiry',
              email: $('.modal.discovery form input[name="email"]').val()

            $.ajax {
              type: 'POST'
              headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
              url: '/discovery/send_request/'
              data: $('.discovery.modal form').serialize()
              dataType: 'json'
            }
          else
            false

      .modal('show')


