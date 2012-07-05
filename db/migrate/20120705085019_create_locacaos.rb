class CreateLocacaos < ActiveRecord::Migration
  def change
    create_table :locacaos do |t|
      t.date :data_de_retirada
      t.date :data_de_entrega

      t.timestamps
    end
  end
end
