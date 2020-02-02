# frozen_string_literal: true

module Zapier
  class JobRequest < Zapier::Base

    def call_operation
      HTTParty.post(ENV['ZAPIER_JOB_WEBHOOK'], body: params)
    end

    def params
      {
        fname: resource.fname,
        lname: resource.lname,
        phone: resource.phone,
        email: resource.email,
        linkedin: resource.linkedin,
        restrictions: resource.restrictions,
        cover: resource.cover,
        resume: resource.resume
      }
    end
  end
end
