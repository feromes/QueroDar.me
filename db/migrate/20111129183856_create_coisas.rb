class CreateCoisas < ActiveRecord::Migration
  def change
    create_table :coisas do |t|
      t.string :titulo
      t.text :descricao
      t.references :categoria

      t.timestamps
    end
    add_index :coisas, :categoria_id
  end
end
