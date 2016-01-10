class AddSlugToPersonals < ActiveRecord::Migration
  def change
    add_column :personals, :slug, :string
    
  end
end
