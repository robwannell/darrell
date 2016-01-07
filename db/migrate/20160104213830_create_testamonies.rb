class CreateTestamonies < ActiveRecord::Migration
  def change
    create_table :testamonies do |t|
      t.string :name
      t.text :quote
      t.string :title

      t.timestamps null: false
    end
  end
end
