class DemoController < ApplicationController
  def send_request
    demo_requester = DemoRequester.new( fname: params[:name][:first],
                                        lname: params[:name][:last],
                                        phone: params[:phone],
                                        email: params[:email],
                                        company: params[:company],
                                        agency: params[:agency]
                                      )

    if demo_requester.valid?
      Zapier::DemoRequest.new(demo_requester).post_to_zapier
      return head 200
    end
    head 500
  end
end
