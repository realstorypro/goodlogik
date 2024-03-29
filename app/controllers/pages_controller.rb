class PagesController < ApplicationController
  require 'net/http'
  require 'rich_text_renderer'

  layout 'popup', only: [:privacy, :tos]

  def landing
    renderer = RichTextRenderer::Renderer.new

    @page_title = 'GoodLogik | Publishing Platform for Brands, Entrepreneurs and Thought-Leaders.'
    @page_description = 'Strengthen your brand, grow your fan-base, and promote your business with a platform that puts in the center.'
    set_meta_tags og: {title: @page_title }
  end

  def platform
    @page_title = 'Platform | GoodLogik'
    @page_description = 'High-performance web platform with advanced publishing capabilities, integrated social features, and built-in analytics.'
    set_meta_tags og: {title: @page_title }
  end

  def pricing
    @page_title = 'Pricing | GoodLogik'
    @page_description = "See the price for GoodLogik's web platform, kick-off your 14-day free trial of and start growing your business today."
    set_meta_tags og: {title: @page_title }
  end

  def coin
    @page_title = 'Coin | GoodLogik'
    @page_description = "Learn about the GoodCoin, a revolutionary digital currency"
    set_meta_tags og: {title: @page_title }
  end

  def about
    @page_title = 'About | GoodLogik'
    @page_description = 'Learn about GoodLogik, the company behind the platform transforming the web.'
    set_meta_tags og: {title: @page_title }
  end

end
