import popup from 'magnific-popup'
console.log popup

class Popuper
  setup : () ->
    $('#modal-trigger').magnificPopup
      type: 'inline'
      midClick: true




export {Popuper as default}