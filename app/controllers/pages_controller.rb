class PagesController < ApplicationController
  require 'net/http'
  require 'rich_text_renderer'

  layout 'popup', only: [:privacy, :tos]

  def home
    @page= contentful.entry(ENV['CONTENTFUL_PRESENTATION_ID'], include: 3)
  end

  def landing
    renderer = RichTextRenderer::Renderer.new

    @homepage = contentful.entry(ENV['CONTENTFUL_LANDING_ID'], include: 2)
    @page_title = @homepage.page_title
    @page_description = @homepage.page_description
    @master_text = renderer.render(@homepage.master_text)
    @cta_color = field_test(:button_color)
    @cta_text = field_test(:button_text)
    set_meta_tags og: {title: @homepage.page_title }
    set_meta_tags icon: @homepage.fav_icon.url, type: 'image/png'

    @works_feed = Feedjira::Feed.fetch_and_parse('https://www.logik.works/feed.rss')
  end

  def features
    @page_title = 'Platform Features | GoodLogik'

  end

  def pricing
    @page_title = 'Platform Pricing | GoodLogik'

  end

  def about
    @page_title = 'About | GoodLogik'
  end

end
