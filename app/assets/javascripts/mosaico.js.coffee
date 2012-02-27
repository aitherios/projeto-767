$ ->
  new Mosaico

class Mosaico
  constructor: ->
    @width = 50
    @placeTiles()
    @fillTiles()

  placeTile: (x, y) =>
    tile = $ '<div class="tile" />'
    tile.css 'position', 'absolute'
    tile.css 'top',  "#{y}px"
    tile.css 'left', "#{x}px"
    tile.css 'width', "#{@width}px"
    tile.css 'height', "#{@width}px"
    ($ 'body').prepend tile

  placeTiles: =>
    left = ($ '#header').position().left
    tilesBefore = Math.floor left / 50
    tilesOnFirstLine = 6 + tilesBefore
    for x in [1..tilesOnFirstLine]
      for y in [1..x]
        @placeTile (x - y) * @width, (y - 1) * @width

  fillTile: (tile) =>
    tile.css 'background-image', 'url("assets/mosaico.png")'
    x = @randomInt(6) * @width
    y = @randomInt(1) * @width
    tile.css 'background-position', "-#{x}px -#{y}px"

  fillTiles: =>
    ($ '.tile').each (index, tile) =>
      @fillTile ($ tile)

  randomInt: (upTo) =>
    Math.floor Math.random() * (upTo + 1)
