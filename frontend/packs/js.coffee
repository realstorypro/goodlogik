import '../semantic_ui/dist/semantic.js'
import Vue from 'vue/dist/vue.min'

import VModal from 'vue-js-modal'
import Vue2Filters from 'vue2-filters'

Vue.use(Vue2Filters)
Vue.use(VModal)


import Typer from '../js/typer'
import Pricing from '../js/pricing'

typer = new Typer
pricing = new Pricing

$ ->
  typer.setup()
  pricing.setup()
