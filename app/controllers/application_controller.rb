class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_global

  def set_global
    @global = contentful.entry(ENV['CONTENTFUL_GLOBAL_ID'], include: 2)
  end

  def contentful
    @client ||= Contentful::Client.new(
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      space: ENV['CONTENTFUL_SPACE_ID'],
      dynamic_entries: :auto,
      raise_errors: true
    )
  end
end
