import MobileDetect from 'mobile-detect'

class HeaderVideo
  setup : () ->
    md = new MobileDetect(window.navigator.userAgent)
    unless md.mobile()
      video = document.querySelector('video#homepage_header_video')
      video.play()



export {HeaderVideo as default}