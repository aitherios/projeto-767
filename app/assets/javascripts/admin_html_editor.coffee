$ ->
  $.fn.exists = ->
    @.length > 0

  @label = $ "label[for='content_block_html']"

  if @label.exists()
    @label.after '<a href="#" class="editor_link markitup">MarkItUp</a>'
    @label.after '<a href="#" class="editor_link ckeditor">CKEditor</a>'

  ($ '.editor_link.markitup').click =>
    ($ '#content_block_html').markItUp(mySettings) unless (@label.data 'editor') == true
    @label.data 'editor', true

  ($ '.editor_link.ckeditor').click =>
    ($ '#content_block_html').ckeditor() unless (@label.data 'editor') == true
    @label.data 'editor', true
