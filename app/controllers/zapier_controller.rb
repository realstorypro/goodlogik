class ZapierController < ApplicationController
  def send_request
    requester = Requester.new(modal_name: params[:modal_name],
                                        fname: params[:name][:first],
                                        lname: params[:name][:last],
                                        phone: params[:phone],
                                        email: params[:email],
                                        audience: params[:audience]
                                      )

    if requester.valid?
      Zapier::MessageRequest.new(requester).post_to_zapier
      return head 200
    end
    head 500
  end
end
