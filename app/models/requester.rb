# frozen_string_literal: true

class Requester
  include ActiveModel::Model

  attr_accessor :modal_name
  attr_accessor :fname
  attr_accessor :lname
  attr_accessor :phone
  attr_accessor :email
  attr_accessor :audience

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates_presence_of :email
end
