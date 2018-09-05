class HeaderVideo
  setup : () ->
    video = document.querySelector('video#homepage_header_video')
    video.play()



export {HeaderVideo as default}