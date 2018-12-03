class PagesController < ApplicationController
  require 'net/http'

  before_action :set_icon
  before_action :fetch_platform

  def home
    @homepage = contentful.entry(ENV['CONTENTFUL_ENTRY_ID'], include: 2)

    @page_title = @homepage.page_title
    @page_description = @homepage.page_description
    set_meta_tags og: {title: @homepage.page_title }
    set_meta_tags icon: @homepage.fav_icon.url, type: 'image/png'
  end

  def about
    @page = contentful.entry(ENV['CONTENTFUL_ABOUT_ID'], include: 2)
  end

  protected
  def set_icon
  end

  def fetch_platform
    @feed= Rails.cache.fetch("feed", enxpires_in: 60.minutes) do
      uri = URI.parse(ENV['RSS_FEED'])
      http = Net::HTTP.new(uri.host, uri.port)
      req = Net::HTTP::Get.new(ENV['RSS_FEED'])
      resp = http.request(req)
      JSON.parse(resp.body)
    end
  end

end
