class CreateExemplars < ActiveRecord::Migration
  def change
    create_table :exemplars do |t|
      t.integer :id

      t.timestamps
    end
  end
end
