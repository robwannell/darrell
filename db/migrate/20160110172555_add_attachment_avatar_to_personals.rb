class AddAttachmentAvatarToPersonals < ActiveRecord::Migration
  def self.up
    change_table :personals do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :personals, :avatar
  end
end
