#import '../semantic_ui/dist/semantic.js'
#import Vue from 'vue/dist/vue.min'


import HeaderVideo from '../js/header_video'
import Popuper from '../js/popuper'

header_video = new HeaderVideo
popuper = new Popuper

$ ->
  header_video.setup()
  popuper.setup()
