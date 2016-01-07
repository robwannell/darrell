class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.string :location
      t.text :content

      t.timestamps null: false
    end
  end
end
