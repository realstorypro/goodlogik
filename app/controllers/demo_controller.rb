class DemoController < ApplicationController
  def send_request
    demo_requester = DemoRequester.new( name: params[:name],
                                        job_title: params[:job_title],
                                        phone: params[:phone],
                                        email: params[:email])
    if demo_requester.valid?
      Zapier::DemoRequest.new(demo_requester).post_to_zapier
      return head 200
    end
    head 200
  end
end
