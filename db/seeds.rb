# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Juan", last_name: "Dominguez", email: "mail@maila.com", phone: "1242131223", password: "mypass", address: "msi casa 132")
User.create(name: "Juan", last_name: "Rodriguez", email: "maail@maila.com", phone: "12412131223", password: "mypass", address: "masi casa 132")
User.create(name: "Pablo", last_name: "Dominguez", email: "mai4l@maila.com", phone: "1242131223", password: "mypass", address: "tu casa 132")
User.create(name: "Andres", last_name: "Dominguez", email: "mai5l@maila.com", phone: "1242131223", password: "mypass", address: "su casa 132")
User.create(name: "Tomas", last_name: "Perez", email: "mail@mail6a.com", phone: "1242131223", password: "mypass", address: "el casa 132")

Venue.create(name: "Estadio nacional", address: "donde sea que quede el estadio", capacity: 10000)
Venue.create(name: "Movistar Arena", address: "donde sea que quede el movistar arena", capacity: 100)

Category.create(name: "platea baja", venue: Venue.where(name: "Estadio nacional").first)
Category.create(name: "platea alta", venue: Venue.where(name: "Estadio nacional").first)
Category.create(name: "platea media", venue: Venue.where(name: "Estadio nacional").first)
Category.create(name: "cancha A", venue: Venue.where(name: "Movistar Arena").first)
Category.create(name: "cancha B", venue: Venue.where(name: "Movistar Arena").first)
Category.create(name: "cancha C", venue: Venue.where(name: "Movistar Arena").first)

Event.create(name: "Police en el nacional", description: "ascdosacasmcsaomcasocma adsdasd sadas", start_date: DateTime.now, venue: Venue.where(name: "Estadio nacional").first)
Event.create(name: "Guns en el nacional", description: "asdasd adsdasd sadas", start_date: DateTime.now, venue: Venue.where(name: "Estadio nacional").first)
Event.create(name: "The Doors en el movistar", description: "ascdosacalfdfgdflsmcsaomcasocma adsdasd sadas", start_date: DateTime.now, venue: Venue.where(name: "Movistar Arena").first)
Event.create(name: "Hannah Montana en el movistar", description: "asdasdsad adsdasd sadas", start_date: DateTime.now, venue: Venue.where(name: "Movistar Arena").first)

Order.create(user: User.find(1), total_paid: 999)
Ticket.create(event: Event.find(1), price: 999, category: Category.find(1), order: Order.find(1))
Order.create(user: User.find(1), total_paid: 88)
Ticket.create(event: Event.find(2), price: 88, category: Category.find(2), order: Order.find(2))
Order.create(user: User.find(1), total_paid: 9090)
Ticket.create(event: Event.find(3), price: 9090, category: Category.find(4), order: Order.find(3))

Order.create(user: User.find(2), total_paid: 2000)
Ticket.create(event: Event.find(1), price: 1000, category: Category.find(1), order: Order.find(4))
Order.create(user: User.find(2), total_paid: 1000)
Ticket.create(event: Event.find(2), price: 1000, category: Category.find(2), order: Order.find(5))
Order.create(user: User.find(2), total_paid: 1000)
Ticket.create(event: Event.find(3), price: 1000, category: Category.find(4), order: Order.find(6))

Order.create(user: User.find(3), total_paid: 1000)
Ticket.create(event: Event.find(1), price: 1000, category: Category.find(1), order: Order.find(7))
Order.create(user: User.find(3), total_paid: 1000)
Ticket.create(event: Event.find(2), price: 1000, category: Category.find(2), order: Order.find(8))
Order.create(user: User.find(3), total_paid: 1000)
Ticket.create(event: Event.find(3), price: 1000, category: Category.find(4), order: Order.find(9))

Order.create(user: User.find(4), total_paid: 1000)
Ticket.create(event: Event.find(1), price: 1000, category: Category.find(1), order: Order.find(10))
Order.create(user: User.find(4), total_paid: 1000)
Ticket.create(event: Event.find(2), price: 1000, category: Category.find(2), order: Order.find(11))
Order.create(user: User.find(4), total_paid: 1000)
Ticket.create(event: Event.find(3), price: 1000, category: Category.find(4), order: Order.find(12))

Order.create(user: User.find(5), total_paid: 1000)
Ticket.create(event: Event.find(1), price: 1000, category: Category.find(1), order: Order.find(13))
Order.create(user: User.find(5), total_paid: 1000)
Ticket.create(event: Event.find(2), price: 1000, category: Category.find(2), order: Order.find(14))
Order.create(user: User.find(5), total_paid: 1000)
Ticket.create(event: Event.find(3), price: 1000, category: Category.find(4), order: Order.find(15))