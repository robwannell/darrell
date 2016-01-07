class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :pagetitle
      t.text :keywords
      t.text :description
      t.text :content

      t.timestamps null: false
    end
  end
end
