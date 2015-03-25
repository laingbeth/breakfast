class AddFieldnameToCereal < ActiveRecord::Migration
  def change
    add_column :cereals, :quantity, :float
  end
end
