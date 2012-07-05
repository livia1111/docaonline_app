class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.integer :id
      t.string :titulo
      t.text :descricao
      t.integer :ano
      t.string :imagem
      t.decimal :custo_de_locacao
      t.integer :tempo_de_utilizacao
      t.integer :quantidade_de_itens
      t.string :qualidade

      t.timestamps
    end
  end
end
