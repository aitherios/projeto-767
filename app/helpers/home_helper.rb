# -*- coding: utf-8 -*-

module HomeHelper
  def content_block name
    ContentBlock.find_by_name(name).html.html_safe
  end

  def content_block_title name
    name == 'main-page' ? 'espaço' : name.downcase
  end

  def content_block_link name
    link_to content_block_title(name).humanize, content_path(name), class: 'softlink'
  end

end
