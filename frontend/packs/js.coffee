import semantic_js from '../semantic_ui/dist/semantic.min'

import Vue from 'vue/dist/vue.esm'

import LandingCover from '../js/landing_cover.vue'
import BrandsCover from '../js/brands_cover.vue'
import CareersCover from '../js/careers_cover.vue'
import CoinCover from '../js/coin_cover.vue'
import AboutCover from '../js/about_cover.vue'
import PlatformCover from '../js/platform_cover.vue'


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


  brands_cover_div = document.getElementById("brands-cover")
  if brands_cover_div != null
    brands_cover = new Vue
      el: document.getElementById('brands-cover'),
      render: (h) ->
        h(BrandsCover)

  careers_cover_div = document.getElementById("careers-cover")
  if careers_cover_div != null
    careers_cover = new Vue
      el: document.getElementById('careers-cover'),
      render: (h) ->
        h(CareersCover)

  coin_cover_div = document.getElementById("coin-cover")
  if coin_cover_div != null
    coin_cover = new Vue
      el: document.getElementById('coin-cover'),
      render: (h) ->
        h(CoinCover)

  about_cover_div = document.getElementById("about-cover")
  if about_cover_div != null
    about_cover = new Vue
      el: document.getElementById('about-cover'),
      render: (h) ->
        h(AboutCover)

  platform_cover_id = document.getElementById("platform-cover")
  if platform_cover_id != null
    feature_cover = new Vue
      el: document.getElementById('platform-cover'),
      render: (h) ->
        h(PlatformCover)

  # Launching Analytics
  analytics.page()

  # Padding Style Adjustments for the Product page
  $('.extra.padding iframe').css('padding-top', '6em')

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

  # Job Modal
  $('.apply.for.job').on 'click', (e) ->
    e.preventDefault()

    $('.ui.sidebar').sidebar('hide')
    analytics.track "opened job application modal"

    $('.job.modal')
      .modal
        onApprove: ->
          form = $('.job.modal form')[0]
          form.reportValidity()

          if form.checkValidity()
            analytics.track 'applied for a job',
              email: $('.modal.job form input[name="email"]').val()

            console.log $('.job.modal form').serialize()

            $.ajax {
              type: 'POST'
              headers: { 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content') }
              url: '/jobs/send/'
              data: $('.job.modal form').serialize()
              dataType: 'json'
            }
          else
            false

      .modal('show')

  # Bios Toggle
  $('.holder.biography').click ->
    $('.bio').slideToggle()
    icon = $(@).find('.icon')
    if icon.hasClass('down')
      icon.removeClass('down')
      icon.addClass('up')
    else
      icon.removeClass('up')
      icon.addClass('down')



# Loading ExecJS 2x
$ ->
  exec_javascript()
