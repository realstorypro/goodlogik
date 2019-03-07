class PagesController < ApplicationController
  require 'net/http'
  require 'rich_text_renderer'

  before_action :set_icon

  def home
    @page= contentful.entry(ENV['CONTENTFUL_PRESENTATION_ID'], include: 3)
  end

  def landing
    renderer = RichTextRenderer::Renderer.new

    @homepage = contentful.entry(ENV['CONTENTFUL_LANDING_ID'], include: 2)
    @page_title = @homepage.page_title
    @page_description = @homepage.page_description
    @master_text = renderer.render(@homepage.master_text)
    set_meta_tags og: {title: @homepage.page_title }
    set_meta_tags icon: @homepage.fav_icon.url, type: 'image/png'
  end

  def features
    @homepage = contentful.entry(env['contentful_entry_id'], include: 2)

    @page_title = @homepage.page_title
    @page_description = @homepage.page_description
    set_meta_tags og: {title: @homepage.page_title }
    set_meta_tags icon: @homepage.fav_icon.url, type: 'image/png'
  end

  def about
    @page = contentful.entry(ENV['CONTENTFUL_ABOUT_ID'], include: 2)
  end

  def tos
    @page = contentful.entry(ENV['CONTENTFUL_TOS_ID'], include: 2)
  end

  protected
  def set_icon
  end

end
