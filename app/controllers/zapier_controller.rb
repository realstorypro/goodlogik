class ZapierController < ApplicationController
  def send_request
    requester = Requester.new( fname: params[:name][:first],
                                        lname: params[:name][:last],
                                        phone: params[:phone],
                                        email: params[:email],
                                        audience: params[:audience]
                                      )

    # HTTParty.post(ENV['ZAPIER_DISCOVERY_WEBHOOK'], body: params)
    destination = ENV['ZAPIER_SALES_WEBHOOK']

    if requester.valid?
      Zapier::MessageRequest.new(requester, destination).post_to_zapier
      return head 200
    end
    head 500
  end
end
