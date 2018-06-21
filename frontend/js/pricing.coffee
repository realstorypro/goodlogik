import Vue from 'vue/dist/vue.min'
import VueSlider from 'vue-slider-component'
import axios from 'axios'


class Pricing
  setup : () ->
    @app = new Vue
      el: '#pricing_component'
      components: { 'vue-slider': VueSlider }
      mounted: ->
        token = document.getElementsByName('csrf-token')[0].content
        axios.defaults.headers.common['X-CSRF-Token'] = token
        axios.defaults.headers.common['Accept'] = 'application/json'

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

        request_demo: () ->
          axios.post('/demo/send_request',{
              name: @name
              job_title: @job_title
              phone: @phone
              email: @email
            }
          ).then( (rsp) =>
            this.$modal.hide 'pricing_modal'
            this.$modal.show 'thank_you_modal'
          ).catch( (err) =>
            this.$modal.hide 'pricing_modal'
            this.$modal.show 'error_modal'
          )

      data: ->
        {
          visitors: 0
          enteprirse_cap: 10000
          price: 350
          visit_price: 0.05
          included_visits: 1000
          name: ''
          job_title: ''
          phone: ''
          email: ''

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
                val_in_k = value
                return val_in_k + ' members'
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