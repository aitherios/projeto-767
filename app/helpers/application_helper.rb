module ApplicationHelper
  def content_block name
    ContentBlock.find_by_name(name).html.html_safe
  end
end
