class PagesController < ApplicationController
  before_action :set_icon

  def home
    @homepage = contentful.entry(ENV['CONTENTFUL_ENTRY_ID'])

    @page_title = @homepage.page_title
    @page_description = @homepage.page_description
    set_meta_tags og: {title: @homepage.page_title}
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
  end
end
