import MobileDetect from 'mobile-detect'

class HeaderVideo
  setup : () ->
    md = new MobileDetect(window.navigator.userAgent)
    unless md.mobile()
      video = document.querySelector('video#header_video')
      video.play() if video 


export {HeaderVideo as default}
