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

          if visitors > @included_visits
            return_price = @price + @visit_price * (visitors - @included_visits)
          else
            return_price = @price

          return_price = return_price * 0.85 if @annual

          return_price

        show_pricing_modal: () ->
          this.$modal.show 'pricing_modal',
            title: 'Demo Request'

      data: ->
        {
          visitors: 0
          enteprirse_cap: 10000
          price: 350
          visit_price: 0.05
          included_visits: 1000

          annual: false
          options:
            eventType: 'auto'
            width: 'auto'
            height: 6
            dotSize: 16
            dotHeight: null
            dotWidth: null
            min: 0
            max: 10000
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
            formatter: (value) =>
              if value < @enteprirse_cap
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