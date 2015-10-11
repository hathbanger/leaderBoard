class AddBirthdayToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :birthday, :date
  end
end
