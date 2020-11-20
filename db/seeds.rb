require 'open-uri'

User.destroy_all
Space.destroy_all
puts "Cleared space and reservation records"

# USERS

User.create!(name: "Charline", email: "charline@test.org", password: "123456", description: "owner of spaces in Paris")
User.create!(name: "Daniel",email: 'daniel@demo.com', password: '123456', name: 'Demo', description: 'abc')
User.create!(name: "Louis", email: "loui-loui@hotmail.de", password: "123456")
User.create!(name: "Alex", email: "alex@lewagon.com", password: "123456")
User.create!(name: "Dion", email: "dion@lewagon.com", password: "123456")


# User for demo
demo_user = User.last

# SPACES

file = URI.open('https://images.unsplash.com/photo-1581143761812-6d1474cdb9d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
space = Space.create!(location: "Erich-Kästner-Str. 11, München", volume: 4, price_per_month: 25, user: demo_user)
space.image.attach(io: file, filename: 'spaceabc.png', content_type: 'image/jpeg')
Space.create!(location: "14 Helene-Mayer-Ring, Munich",volume: 3, price_per_month: 15, user: demo_user)
Space.create!(location: "10 Osterseen Str, Munich", volume: 3, price_per_month: 15, user: demo_user, condition: 'Cannot be used for non-water-proof items', access: 'Accessible by car', description: 'Test description')
puts "#{Space.count} spaces in the DB. Last one located at #{Space.last.location}"

# RESERVATIONS

Reservation.create!(space_id: 2, user_id: 2, start_date: Date.parse('17 Nov 2020'), end_date: Date.parse('20 Nov 2020'), is_confirmed: false)
Reservation.create!(space_id: 10, user_id: 1, start_date: Date.parse('20 Nov 2020'), end_date: Date.parse('20 Dec 2020'), is_confirmed: true)
Reservation.create!(space_id: 4, user_id: 1, start_date: Date.parse('5 Dec 2020'), end_date: Date.parse('15 Dec 2020'), is_confirmed: false)
Reservation.create!(space_id: 2, user_id: 3, start_date: Date.parse('10 Nov 2020'), end_date: Date.parse('30 Nov 2020'), is_confirmed: false)
Reservation.create!(space_id: 1, user_id: 4, start_date: Date.parse('10 Nov 2020'), end_date: Date.parse('26 Dec 2020'), is_confirmed: false)
Reservation.create!(space_id: 3, user_id: 5, start_date: Date.parse('28 Dec 2020'), end_date: Date.parse('31 Feb 2020'), is_confirmed: false)
Reservation.create!(space_id: 4, user_id: 2, start_date: Date.parse('17 Dec 2020'), end_date: Date.parse('31 Dec 2020'), is_confirmed: false)
Reservation.create!(space_id: 3, user_id: 1, start_date: Date.parse('1 Jan 2021'), end_date: Date.parse('1 Jun 2021'), is_confirmed: false)
Reservation.create!(space_id: 1, user_id: 1, start_date: Date.parse('1 Jan 2021'), end_date: Date.parse('8 Jan 2021'), is_confirmed: false)
Reservation.create!(space_id: 11, user_id: 2, start_date: Date.parse('23 Dec 2020'), end_date: Date.parse('26 Dec 2020'), is_confirmed: false)







