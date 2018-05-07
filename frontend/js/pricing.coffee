import Vue from 'vue/dist/vue.min'
import VueSlider from 'vue-slider-component'

class Pricing
  setup : () ->
    @app = new Vue
      el: '#pricing_component'
      components: { 'vue-slider': VueSlider }
      filters:
        visitor_filter: (value) ->
          "#{value / 1000}k"

      data: ->
        {
          visitors: 100000
          options:
            eventType: 'auto'
            width: 'auto'
            height: 6
            dotSize: 16
            dotHeight: null
            dotWidth: null
            min: 100000
            max: 1000000
            interval: 1000
            show: true
            speed: 0.5
            disabled: false
            piecewise: true
            piecewiseStyle: false
            piecewiseLabel: false
            tooltip: 'always'
            tooltipDir: 'top'
            reverse: false
            data: null
            clickable: true
            realTime: false
            lazy: false
            formatter: (value) ->
              val_in_k = value/1000
              val_in_k + 'K Signins'
            bgStyle: null
            sliderStyle: null
            processStyle: null
            piecewiseActiveStyle: null
            piecewiseStyle: null
            tooltipStyle: null
            labelStyle: null
            labelActiveStyle: null
        }


export {Pricing as default}