class User < ApplicationRecord
  has_many :orders

  def most_expensive_ticket_bought
    return Order.where(user_id: self.id).order(:total_paid).last
  end

  def most_expensive_ticket_bought_between(start_date, end_date)
    return Order.where('user_id = :user AND created_at >= :start_date AND created_at <= :end_date',
                       {user: self.id, start_date: start_date, end_date: end_date} ).order(:total_paid).last
  end

  def last_event
    order_id = Order.select('id').where(user_id: self.id).order(:created_at).last
    event_id = Ticket.select('event_id').where(order_id: order_id).order(:created_at).last['event_id']
    return Event.select('name').where(id: event_id).last['name']
  end

end
