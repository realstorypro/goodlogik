import popup from 'magnific-popup'
console.log popup

class Popuper
  setup : () ->

    $(document).ready ->
      popup_el = $('.white-popup')
      screen_height = document.documentElement.clientHeight

      # build iframe
      iframe = document.createElement('iframe')
      iframe.src = popup_el.data('source')
      iframe.width = '100%'
      iframe.height = screen_height - 45
      iframe.frameBorder = 0
      $('#typeform').append(iframe)

      console.log document.documentElement.clientHeight

      $('#modal-trigger').magnificPopup
        type: 'inline'
        midClick: true




export {Popuper as default}