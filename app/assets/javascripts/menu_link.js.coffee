$ ->
  ($ '.softlink').each ->
    new MenuLink @

class MenuLink
  constructor: (@link) ->
    @link = $ @link
    @link.click @click

  click: (event) =>
    event.preventDefault()
    $.get "#{@link.attr 'href'}.json", (data) =>
      ($ '#content').html data.html
      ($ '#projet-767-name').text data.name
