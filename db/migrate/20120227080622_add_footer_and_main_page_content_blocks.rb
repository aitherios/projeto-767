class AddFooterAndMainPageContentBlocks < ActiveRecord::Migration
  def up
    html = <<HTML
<span>Footer</span>
HTML
    ContentBlock.create! name: 'footer', html: html

    html = <<HTML
<blockquote cite="http://en.wikiquote.org/wiki/Friedrich_Nietzsche">
  He who fights with monsters should look to it that he himself does not become a monster.
  And when you gaze long into an abyss the abyss also gazes into you.
</blockquote>
HTML
    ContentBlock.create! name: 'main-page', html: html
  end

  def down
    ContentBlock.find_by_name('footer').destroy!
    ContentBlock.find_by_name('main-page').destroy!
  end
end
