# frozen_string_literal: true

class ZapierController < ApplicationController
  def send_request
    requester = Requester.new(modal_name: params[:modal_name],
                              fname: params[:name][:first],
                              lname: params[:name][:last],
                              phone: params[:phone],
                              email: params[:email],
                              audience: params[:audience])

    if requester.valid?
      Zapier::MessageRequest.new(requester).post_to_zapier
      return head 200
    end
    head 500
  end

  def send_job_app
    job_application = JobApplication.new(modal_name: params[:modal_name],
                                         fname: params[:name][:first],
                                         lname: params[:name][:last],
                                         phone: params[:phone],
                                         email: params[:email],
                                         linkedin: params[:linkedin],
                                         restrictions: params[:restrictions],
                                         cover: params[:cover],
                                         resume: params[:resume])

    if job_application.valid?
      Zapier::JobRequest.new(job_application).post_to_zapier
      return head 200
    end
    head 500
  end
end
