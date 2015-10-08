class CreateAthletesEvents < ActiveRecord::Migration
  def self.up
    create_table :athletes_events, id: false do |t|
      t.references :athlete, null: false
      t.references :event, null: false
    end
    # Add an unique index for better join speed!
    add_index(:athletes_events, [:athlete_id, :event_id], :unique => true)
  end
 def self.down
    drop_table :athletes_events
  end
end
