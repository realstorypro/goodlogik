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
    @feed= Rails.cache.fetch("feed", :expires_in => 1.minutes) do
      uri = URI.parse(ENV['RSS_FEED'])
      Net::HTTP.start(uri.host, uri.port,
        :use_ssl => uri.scheme == 'https') do |http|
        request = Net::HTTP::Get.new uri
        response = http.request request # Net::HTTPResponse object
        JSON.parse(response.body)
      end
    end
  end

end
