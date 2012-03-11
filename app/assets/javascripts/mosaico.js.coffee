$ ->
  new Mosaico

class Mosaico
  constructor: ->
    @width = 50
    @placeTilesInLeftColumn()
    @fillTiles()
    @fadeInTilesRandomly()

  placeTile: (x, y) =>
    tile = $ '<div class="tile" />'
    tile.css 'position', 'absolute'
    tile.css 'top',  "#{y}px"
    tile.css 'left', "#{x}px"
    tile.css 'width', "#{@width}px"
    tile.css 'height', "#{@width}px"
    tile.hide()
    ($ 'body').prepend tile

  placeTilesInLeftColumn: =>
    left = ($ '#header').position().left
    tilesOnFirstLine = Math.floor left / 50
    tilesOnFirstColumn = Math.floor ($ document).height() / 50
    for x in [0..(tilesOnFirstLine - 1)]
      for y in [0..tilesOnFirstColumn]
        @placeTile x * @width, y * @width

  placeTilesInTriangle: =>
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

  fadeInTilesRandomly: =>
    ($ '.tile').each (index, tile) =>
      @delay @randomInt(1200), =>
        ($ tile).fadeIn 'fast'

  showTiles: =>
    ($ '.tile').show()

  randomInt: (upTo) =>
    Math.floor Math.random() * (upTo + 1)

  delay: (ms, func) =>
    setTimeout func, ms
