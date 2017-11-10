import 'jquery'
import '../semantic_ui/dist/semantic.js'
import Vue from 'vue/dist/vue.min'

$ ->
  $('.more.info').popup
    hoverable: true

  $('.hero').visibility
    onBottomPassed:  ->
      $('.card').transition
        animation: 'slide up'
        interval: 300

  $('.tech').visibility
    onTopPassed: ->
      $('.contact .item').transition
        animation: 'horizontal flip'
        reverse: 'auto'
        interval: 400

  # Vue Contact Form
  new Vue
    el: '#contact'

    data:
      first_name: ''
      last_name: ''
      email: ''
      phone: ''
      description: ''
      errorMessage: null
      successMessage: null

    methods:
      send: (e) ->
        params = $(e.currentTarget).serialize()
        $(e.currentTarget).find('button').addClass 'loading'

        $.ajax
          url: 'https://hooks.zapier.com/hooks/catch/23488/s3ilfh/'
          type: 'POST'
          data: params
          dataType: 'jsonp'
          success: (res) =>
            window.res = res
            if res.status == 'success'
              @successMessage = 'Thank you for reaching out. I will get back to you in the next 48 business hours.'




