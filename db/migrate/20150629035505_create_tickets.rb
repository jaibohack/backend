class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :attendee, index: true, null: false
      t.references :event, index: true, null: false

      t.timestamps null: false
    end
    add_foreign_key :tickets, :attendees
    add_foreign_key :tickets, :events
  end
end
