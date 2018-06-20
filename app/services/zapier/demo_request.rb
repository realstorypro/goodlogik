# frozen_string_literal: true

module Zapier
  class DemoRequest < Zapier::Base
    def call_operation
      HTTParty.post('https://hooks.zapier.com/hooks/catch/3200901/w6dh8d/', body: params)
    end

    def params
      {
        name: resource.name,
        job_title: resource.job_title,
        phone: resource.phone,
        email: resource.email
      }
    end
  end
end
