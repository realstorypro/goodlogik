import Vue from 'vue/dist/vue.min'
import VueSlider from 'vue-slider-component'

class Pricing
  setup : () ->
    @app = new Vue
      el: '#pricing_component'
      components: { 'vue-slider': VueSlider }
      mounted: ->
        $('.ui.checkbox').checkbox()
      filters:
        visitor_filter: (value) ->
          "#{value / 1000}k"

      methods:
        calculate_price: (visitors) ->
          price = 850
          price += 250 if @two_factor
          visit_price = 0.03
          included_visits = 100000

          if visitors > included_visits
            return_price = price + (visitors * visit_price) - (included_visits * visit_price)
          else
            return_price = price

          return_price = return_price * 0.85 if @annual

          return_price += 0.0361 * visitors if @two_factor


          return_price

      data: ->
        {
          visitors: 100000
          annual: true
          two_factor: false
          options:
            eventType: 'auto'
            width: 'auto'
            height: 6
            dotSize: 16
            dotHeight: null
            dotWidth: null
            min: 100000
            max: 1000000
            interval: 50000
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
              if value < 1000000
                val_in_k = value/1000
                return val_in_k + 'K Signins'
              else
                return 'Enterprise'
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