# frozen_string_literal: true

module Zapier
  class DemoRequest < Zapier::Base
    def call_operation
      HTTParty.post(ENV['ZAPIER_WEBHOOK'], body: params)
    end

    def params
      {
        fname: resource.fname,
        lname: resource.lname,
        phone: resource.phone,
        email: resource.email,
        company: resource.company,
        budget: resource.budget,
        agency: resource.agency
      }
    end
  end
end
