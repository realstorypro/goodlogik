# frozen_string_literal: true

module Zapier
  class MessageRequest < Zapier::Base

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
