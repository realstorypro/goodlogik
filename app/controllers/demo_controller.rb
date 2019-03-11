class DemoController < ApplicationController
  def send_request
    demo_requester = DemoRequester.new( fname: params[:name][:first],
                                        lname: params[:name][:last],
                                        phone: params[:phone],
                                        email: params[:email],
                                        referral: params[:referral]
                                      )

    if demo_requester.valid?
      Zapier::DemoRequest.new(demo_requester).post_to_zapier
      # field_test_converted(:button_color)
      field_test_converted(:button_text)
      return head 200
    end
    head 500
  end
end
