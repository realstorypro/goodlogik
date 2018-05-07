import '../semantic_ui/dist/semantic.js'
import Vue from 'vue/dist/vue.min'

import Typer from '../js/typer'
import Pricing from '../js/pricing'

typer = new Typer
pricing = new Pricing

$ ->
  typer.setup()
  pricing.setup()
