class DiscoveryController < ApplicationController
  def send_request
    sales_requester = DiscoveryRequester.new( fname: params[:name][:first],
                                        lname: params[:name][:last],
                                        phone: params[:phone],
                                        email: params[:email],
                                        audience: params[:audience]
                                      )

    if sales_requester.valid?
      Zapier::DiscoveryRequest.new(sales_requester).post_to_zapier
      return head 200
    end
    head 500
  end
end
