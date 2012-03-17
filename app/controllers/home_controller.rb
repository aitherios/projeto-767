# -*- coding: utf-8 -*-

class HomeController < ApplicationController

  def index
    @content_block_name = params[:content] || 'main-page'
    content_block = ContentBlock.find_by_name @content_block_name
    content_block.html = render_to_string :index, layout: false
    respond_to do |format|
      format.html { render :index }
      format.json { render json: content_block }
    end
  end

end
