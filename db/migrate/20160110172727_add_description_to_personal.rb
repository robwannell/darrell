class AddDescriptionToPersonal < ActiveRecord::Migration
  def change
    add_column :personals, :description, :text
  end
end
