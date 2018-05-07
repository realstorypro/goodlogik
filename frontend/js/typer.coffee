import Vue from 'vue/dist/vue.min'
import { VueTyper } from 'vue-typer'

class Typist
  setup : () ->
    @app = new Vue
      el: '#typing_header'
      components: { 'vue-typer': VueTyper }


export {Typist as default}