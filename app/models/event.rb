class Event < ApplicationRecord
  belongs_to :venue
  has_many :tickets

  def self.most_tickets_sold
    biggest = Ticket.group(:event_id).count.first
    return Event.where(id: biggest[0]).first
  end

  def self.highest_revenue
    all_event = Event.select('id, name')
    bigmoney = [0,'']
    all_event.each do |i|
      money = Ticket.where(event_id: i['id']).sum(:price)
      if money>bigmoney[0]
        bigmoney = [money, i['id']]
      end
    end
    return Event.where(id: bigmoney[1]).first
  end
end
