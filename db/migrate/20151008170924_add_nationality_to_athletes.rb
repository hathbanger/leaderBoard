class AddNationalityToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :nationality, :string
  end
end
