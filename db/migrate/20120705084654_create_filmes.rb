class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.string :tipo_de_midia
      t.string :atores_principais
      t.string :diretor
      t.string :distribuidora
      t.string :genero
      t.integer :tempo_de_duracao

      t.timestamps
    end
  end
end
