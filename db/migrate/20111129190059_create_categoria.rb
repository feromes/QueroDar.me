class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.text :nome

      t.timestamps
    end
  end
end
