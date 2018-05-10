class PagesController < ApplicationController
  def home
    @homepage = contentful.entries(content_type: 'homepage', include: 1)
  end

  protected

  def contentful
    @client ||= Contentful::Client.new(
      access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
      space: ENV['CONTENTFUL_SPACE_ID'],
      dynamic_entries: :auto,
      raise_errors: true
    )
  end
end
