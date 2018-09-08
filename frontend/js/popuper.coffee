import popup from 'magnific-popup'

class Popuper
  setup : () ->

    $(document).ready =>
      popup_el = $('.white-popup')
      screen_height = document.documentElement.clientHeight

      # build iframe
      iframe = document.createElement('iframe')
      iframe.src = popup_el.data('source')
      iframe.width = '100%'
      iframe.height = screen_height - 45
      iframe.frameBorder = 0
      $('#typeform').append(iframe)

      $('#modal-trigger').magnificPopup
        type: 'inline'
        midClick: true

    window.addEventListener 'resize', @resize

  resize: () ->
    $.magnificPopup.close()
    screen_height = document.documentElement.clientHeight
    $('#typeform iframe').attr('height', screen_height - 45)




export {Popuper as default}