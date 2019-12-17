class PagesController < ApplicationController
  require 'net/http'
  require 'rich_text_renderer'

  layout 'popup', only: [:privacy, :tos]

  def landing
    renderer = RichTextRenderer::Renderer.new

    @homepage = contentful.entry(ENV['CONTENTFUL_LANDING_ID'], include: 2)
    set_meta_tags icon: @homepage.fav_icon.url, type: 'image/png'

    @page_title = 'GoodLogik | Web Platform for Entrepreneurs, Brands and Influencers.'
    @page_description = 'Strengthen your brand, grow your fan-base, and promote your business with a platform that puts in the center.'
    set_meta_tags og: {title: @page_title }
  end

  def features
    @page_title = 'Product | GoodLogik'
    @page_description = 'High-performance web platform with advanced publishing capabilities, integrated social features, and built-in analytics.'

  end

  def pricing
    @page_title = 'Pricing | GoodLogik'
    @page_description = "See the price for GoodLogik's web platform, kick-off your 14-day free trial of and start growing your business today."

  end

  def about
    @page_title = 'About | GoodLogik'
  end

end
