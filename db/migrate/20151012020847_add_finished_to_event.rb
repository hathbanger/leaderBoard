class AddFinishedToEvent < ActiveRecord::Migration
  def change
    add_column :events, :finished, :boolean, :default => false
  end
end
