class AddRowOrderToPersonals < ActiveRecord::Migration
  def change
      add_column :personals, :row_order, :integer
    end
end
