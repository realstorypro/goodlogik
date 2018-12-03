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
    uri = URI.parse(ENV['RSS_FEED'])
    http = Net::HTTP.new(uri.host, uri.port)
    req = Net::HTTP::Get.new(ENV['RSS_FEED'])
    resp = http.request(req)
    @feed= JSON.parse(resp.body)
    
    # Rails.cache.fetch("platform_records", enxpires_in: 1.seconds) do
    #   begin
    #     uri = URI.parse(ENV['RSS_FEED'])
    #     http = Net::HTTP.new(uri.host, uri.port)
    #     req = Net::HTTP::Get.new(url)
    #     resp = http.request(req)
    #     @feed= JSON.parse(resp.body).to_json
    #   rescue
    #     @feed = [].to_json
    #   end

    # end
  end

end
