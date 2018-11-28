class PagesController < ApplicationController
  before_action :set_icon

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
end
