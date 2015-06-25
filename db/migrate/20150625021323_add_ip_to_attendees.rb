class AddIpToAttendees < ActiveRecord::Migration
  def change
    add_reference :attendees, :ip, index: true
    add_foreign_key :attendees, :ips
  end
end
