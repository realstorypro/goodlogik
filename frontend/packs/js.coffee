import 'jquery'
import '../semantic_ui/dist/semantic.js'
import Vue from 'vue/dist/vue.esm'

$ ->
  $('.more.info').popup
    hoverable: true

  startup_transition = $('.card').transition
    animation: 'pulse'
    reverse: 'auto'
    interval: 200

  # VUE
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

        $.ajax
          url: 'https://hooks.zapier.com/hooks/catch/23488/s3ilfh/'
          type: 'POST'
          data: params
          dataType: 'jsonp'
          success: (res) =>
            window.res = res
            if res.status == 'success'
              @successMessage = 'Thank you for reaching out. I will get back to you in the next 48 business hours.'




