# frozen_string_literal: true

module Zapier
  class SalesRequest < Zapier::Base
    def call_operation
      HTTParty.post(ENV['ZAPIER_SALES_WEBHOOK'], body: params)
    end

    def params
      {
        fname: resource.fname,
        lname: resource.lname,
        phone: resource.phone,
        email: resource.email,
        audience: resource.audience
      }
    end
  end
end
