import MobileDetect from 'mobile-detect'

class HeaderVideo
  setup : () ->
    md = new MobileDetect(window.navigator.userAgent)
    if md.mobile()
      masthead = $('.masthead')
      masthead.css('min-height', masthead.outerHeight())
      
      #video = document.querySelector('video#header_video')
      #console.log video.offsetHeight
      #video.play() if video 


export {HeaderVideo as default}
