class Venue < ApplicationRecord
  has_many :categories
  has_many :events

  def last_attendance
    event_id = Event.select('id').where(venue_id: self.id).order(:created_at).last
    return Ticket.where(event_id: event_id).count

  end
end
