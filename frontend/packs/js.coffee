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


  # Requester
  $('.requester.trigger').on 'click', (e) ->
    e.preventDefault()
    modal_name =  $(@).data('name')
    modal_action =  $(@).data('action')
    modal_color =  $(@).data('color')

    $('.modal.requester .approve').text(modal_action).addClass(modal_color)
    $('.modal.requester .modal_name').val(modal_name)

    $('.ui.sidebar').sidebar('hide')
    analytics.track "opened #{modal_name} modal"

    $('.requester.modal')
      .modal
        onApprove: ->
          form = $('.modal.requester form')[0]
          form.reportValidity()

          if form.checkValidity()
            analytics.track 'requested discovery inquiry',
              email: $('.modal.requester form input[name="email"]').val()

            console.log $('.requester.modal form').serialize()

            $.ajax {
              type: 'POST'
              headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
              url: '/requests/send/'
              data: $('.requester.modal form').serialize()
              dataType: 'json'
            }
          else
            false

      .modal('show')


