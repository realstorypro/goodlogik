class BrandsController < ApplicationController
  require 'net/http'
  require 'rich_text_renderer'

  def index
    @renderer = RichTextRenderer::Renderer.new
    @brands = contentful.entries(content_type: 'brand', order: 'fields.sortOrder')
  end

  def show
    @renderer = RichTextRenderer::Renderer.new
    @brand = contentful.entry(params[:id])
  end
end
