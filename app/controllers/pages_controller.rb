class PagesController < ApplicationController
  before_action :set_icon

  def home
    @homepage = contentful.entries(content_type: 'homepage', include: 1)

    @page_title = @homepage[0].page_title
    @page_description = @homepage[0].page_description
    set_meta_tags og: {title: @homepage[0].page_title}
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

  def set_icon
    set_meta_tags icon: '/icon.png', type: 'image/png'
  end
end
