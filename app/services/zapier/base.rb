# frozen_string_literal: true

# rubocop:disable GlobalVars
module Zapier
  class Base
    include HTTParty

    attr_accessor :error_message, :response, :code, :body
    attr_reader :resource, :destination

    def initialize(resource, destination)
      @resource = resource
      @destination = destination
    end

    def post_to_zapier
      self.response = call_operation
      self.body = response.parsed_response
      self.code = response.code
      self.error_message = response.body
      success?
    end

    def call_operation
      HTTParty.post(destination, body: params)
    end

    def success_status_codes
      [200]
    end

    def success?
      return true if success_status_codes.include?(code)
      Rails.logger.error(error_message)
      false
    end
  end
end
# rubocop:enable GlobalVars
