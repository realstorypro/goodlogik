# frozen_string_literal: true

module Zapier
  class MessageRequest < Zapier::Base

    def call_operation
      HTTParty.post(ENV['ZAPIER_REQUESTER_WEBHOOK'], body: params)
    end

    def params
      {
        fname: resource.fname,
        lname: resource.lname,
        phone: resource.phone,
        email: resource.email,
        audience: resource.audience,
        modal_name: resource.modal_name
      }
    end
  end
end
