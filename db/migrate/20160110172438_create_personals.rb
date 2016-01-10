class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :title
      t.string :name
      t.string :position
      t.text :content

      t.timestamps null: false
    end
  end
end
