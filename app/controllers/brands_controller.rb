class BrandsController < ApplicationController
  require 'net/http'
  require 'rich_text_renderer'

  def index
    @jobs = contentful.entries(content_type: 'brand', order: 'fields.sortOrder')
  end

  def show
    @renderer = RichTextRenderer::Renderer.new
    @job = contentful.entry(params[:id])
  end
end
