$ ->
  ($ '.softlink').each ->
    new MenuLink @

class MenuLink
  constructor: (@link) ->
    @link = $ @link
    @link.click @click
    @header = ($ '#projeto-767-name')
    @content = ($ '#content')

  click: (event) =>
    event.preventDefault()
    unless (@header.data 'content') == (@link.attr 'href')
      $.get "#{@link.attr 'href'}.json", (data) =>
        @header. data 'content', @link.attr 'href'
        @changeHtml @header, data.name
        @changeHtml @content, data.html

  changeHtml: (elem, data) =>
    elem = $ elem
    elem.fadeOut 'fast', =>
      elem.html data
      elem.fadeIn 'fast'
