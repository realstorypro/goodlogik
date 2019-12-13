import semantic_js from '../semantic_ui/dist/semantic.min'
import Turbolinks from "turbolinks"

import Vue from 'vue/dist/vue.esm'
import vue_babylonjs from 'vue-babylonjs'
import TurbolinksAdapter from 'vue-turbolinks';

import LandingCover from '../js/landing_cover.vue'
import PricingCover from '../js/pricing_cover.vue'
import AboutCover from '../js/about_cover.vue'
import FeatureCover from '../js/feature_cover.vue'


Vue.use(vue_babylonjs)
Vue.use(TurbolinksAdapter)

Turbolinks.start()


exec_javascript = ->

  # first promoter
  do ->
    t = document.createElement('script')
    t.type = 'text/javascript'
    t.async = !0
    t.src = 'https://cdn.firstpromoter.com/fprom.js'
    t.onload =
      t.onreadystatechange = ->
        `var t`
        t = @readyState
        if !t or 'complete' == t or 'loaded' == t
          try
            $FPROM.init 'xuq7h8x8', '.goodlogik.com'
          catch t

    e = document.getElementsByTagName('script')[0]
    e.parentNode.insertBefore t, e

  # injected first promoter tid into chargebee instance
  chargebeeTrackFunc = (fprom) ->
    tid = fprom.data.tid
    chargebeeInstance = undefined
    try
      chargebeeInstance = Chargebee.getInstance()
    catch err
    if tid and chargebeeInstance
      cart = chargebeeInstance.getCart()
      cart.setCustomer cf_tid: tid
    else if tid
      document.addEventListener 'DOMContentLoaded', ->
        chargebeeTrackFunc fprom

  if window.$FPROM
    chargebeeTrackFunc $FPROM
  else
    _fprom = window.fprom or []
    window._fprom = _fprom
    _fprom.push [
      '_init'
      chargebeeTrackFunc
    ]



  landing_cover_div = document.getElementById("landing-cover")
  if landing_cover_div != null
    landing_cover = new Vue
      el: document.getElementById('landing-cover'),
      render: (h) ->
        h(LandingCover)

  pricing_cover_div = document.getElementById("pricing-cover")
  if pricing_cover_div != null
    pricing_cover = new Vue
      el: document.getElementById('pricing-cover'),
      render: (h) ->
        h(PricingCover)

  about_cover_div = document.getElementById("about-cover")
  if about_cover_div != null
    about_cover = new Vue
      el: document.getElementById('about-cover'),
      render: (h) ->
        h(AboutCover)

  feature_cover_div = document.getElementById("feature-cover")
  if feature_cover_div != null
    feature_cover = new Vue
      el: document.getElementById('feature-cover'),
      render: (h) ->
        h(FeatureCover)

  analytics.page()

  # Dropdowns
  $('.ui.dropdown').dropdown()

  # Tabs
  $('.tabular .item').tab()

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



# Loading ExecJS 2x
$ ->
  exec_javascript()

document.addEventListener "turbolinks:load", ->
  exec_javascript()
