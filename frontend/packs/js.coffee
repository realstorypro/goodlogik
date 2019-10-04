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

  # Investors Check
  $('.investors.check').on 'click', (e) ->
    e.preventDefault()
 
    $('.ui.sidebar').sidebar('hide')
    analytics.track 'opened accredited investor check'


    $('.modal.check')
      .modal
        onShow: ->
          $('.content-holder').css('opacity', 0)
        onApprove: ->
          $('.investor.modal')
            .modal
              onShow: ->
                $('.content-holder').css('opacity', 0)
              onHide: ->
                $('.content-holder').css('opacity', 1)
              onApprove: ->

                form = $('.investor.modal form')[0]
                form.reportValidity()

                if form.checkValidity()
                  analytics.track 'requested investment info',
                    email: $('.investor.modal form input[name="email"]').val()

                  $.ajax {
                      type: 'POST'
                      headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
                      url: '/demo/send_request/'
                      data: $('.investor.modal form').serialize()
                      dataType: 'json'
                  }

                  $('.content-holder p:not(.text)').remove()
                  $('.content-holder h1').text('Investment Request Sent')
                  $('.content-holder p.text').text('Thank you for your interest. We will be reaching out shortly.')
                else
                  false

            .modal('show')

        onDeny: ->
          $('.content-holder').css('opacity', 1)
        onHide: ->
          $('.content-holder').css('opacity', 1)
      .modal('show')

    analytics.track 'opened accredited investor modal'


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
                url: '/sales/send_request/'
                data: $('.sales.modal form').serialize()
                dataType: 'json'
            }

            $('.content-holder p:not(.text)').remove()
            $('.content-holder h1').text('Demo Request Sent')
            $('.content-holder p.text').text('Thank you for your interest. We will be reaching out shortly.')
          else
            false

      .modal('show')
