class AddAttachmentEventlogoToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :eventlogo
    end
  end

  def self.down
    remove_attachment :events, :eventlogo
  end
end
