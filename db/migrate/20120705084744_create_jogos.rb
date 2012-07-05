class CreateJogos < ActiveRecord::Migration
  def change
    create_table :jogos do |t|
      t.string :tipo_de_midia
      t.text :requisitos_computacionais
      t.string :genero

      t.timestamps
    end
  end
end
