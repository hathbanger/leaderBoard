class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.float :score
      t.belongs_to :athlete, index: true, foreign_key: true
      t.belongs_to :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
