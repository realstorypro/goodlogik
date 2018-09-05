import '../semantic_ui/dist/semantic.js'
import Vue from 'vue/dist/vue.min'


import HeaderVideo from '../js/header_video'
header_video = new HeaderVideo

$ ->
  header_video.setup()
