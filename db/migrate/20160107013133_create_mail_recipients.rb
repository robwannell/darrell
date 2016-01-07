class CreateMailRecipients < ActiveRecord::Migration
  def change
    create_table :mail_recipients do |t|
      t.string :name
      t.string :email
      t.string :mailer

      t.timestamps null: false
    end
  end
end
