class CreateCereals < ActiveRecord::Migration
  def change
    create_table :cereals do |t|
      t.string :name
      t.string :category

      t.timestamps null: false
    end
  end
end
