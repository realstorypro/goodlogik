# frozen_string_literal: true

class DemoRequester
  include ActiveModel::Model

  attr_accessor :name
  attr_accessor :job_title
  attr_accessor :phone
  attr_accessor :email

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
