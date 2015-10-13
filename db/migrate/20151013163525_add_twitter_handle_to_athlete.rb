class AddTwitterHandleToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :twitterHandle, :string
  end
end
