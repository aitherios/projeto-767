# -*- coding: utf-8 -*-

class HomeController < ApplicationController

  def index
    @content_block_name = params[:content] || 'main-page'
    respond_to do |format|
      format.html { render :index }
      format.json { render json: ContentBlock.find_by_name(@content_block_name) }
    end
  end

end
