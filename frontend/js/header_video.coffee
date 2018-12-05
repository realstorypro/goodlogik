import MobileDetect from 'mobile-detect'

class HeaderVideo
  setup : () ->
    md = new MobileDetect(window.navigator.userAgent)
    if md.mobile()
      masthead = $('.masthead')
      masthead.css('min-height', masthead.outerHeight())
      
export {HeaderVideo as default}
