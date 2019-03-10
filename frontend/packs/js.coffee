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
