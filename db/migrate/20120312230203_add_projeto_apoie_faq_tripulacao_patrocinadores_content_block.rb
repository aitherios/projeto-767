# -*- coding: utf-8 -*-

class AddProjetoApoieFaqTripulacaoPatrocinadoresContentBlock < ActiveRecord::Migration
  def up
    html = <<HTML
<span>Projeto</span>
HTML
    ContentBlock.create! name: 'projeto', html: html

    html = <<HTML
<span>Apoie</span>
HTML
    ContentBlock.create! name: 'apoie', html: html

    html = <<HTML
<span>FAQ</span>
HTML
    ContentBlock.create! name: 'faq', html: html

    html = <<HTML
<span>Tripulação</span>
HTML
    ContentBlock.create! name: 'tripulação', html: html

    html = <<HTML
<span>Patrocinadores</span>
HTML
    ContentBlock.create! name: 'patrocinadores', html: html
  end

  def down
    ContentBlock.find_by_name('projeto').destroy!
    ContentBlock.find_by_name('apoie').destroy!
    ContentBlock.find_by_name('faq').destroy!
    ContentBlock.find_by_name('tripulação').destroy!
    ContentBlock.find_by_name('patrocinadores').destroy!
  end
end
