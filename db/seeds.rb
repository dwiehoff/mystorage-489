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
# 1
file = URI.open('https://images.unsplash.com/photo-1581143761812-6d1474cdb9d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
space = Space.create!(location: 'Erich-Kästner-Str. 11, Munich', volume: 60, condition: 'Unheated, slightly wet', access: 'Via front door (1.5 x 0.8 m)', price_per_month: 5, user_id: 1, description: 'Basement')
space.image.attach(io: file, content_type: 'image/jpeg')
# 2
file = URI.open('https://images.unsplash.com/photo-1531798123643-26d5ab4c264d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
space = Space.create!(location: 'Hohenschwangaustraße 4, Munich', volume: 20, condition: 'Unheated, dry, dusty, prone to smells', access: 'Via opening', price_per_month: 3, user_id: 3, description: 'Cowshed')
space.image.attach(io: file, content_type: 'image/jpeg')
# 3
file = URI.open('https://images.unsplash.com/photo-1599001509220-fd23b7b95e53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1250&q=80')
space = Space.create!(location: 'Marsstraße 37, Munich', volume: 4, condition: 'Dusty, unheated, dry', access: 'Via garage door', price_per_month: 5, user_id: 2, description: 'Shed')
space.image.attach(io: file, content_type: 'image/jpeg')
# 4
file = URI.open('https://images.unsplash.com/photo-1571661652889-f04601312797?ixlib=rb-1.2.1&auto=format&fit=crop&w=628&q=80')
space = Space.create!(location: 'Ehrengutstraße 2, Munich', volume: 5, condition: 'Unheated, clean, dry', access: 'Via road', price_per_month: 4, user_id: 2, description: 'Small shed')
space.image.attach(io: file, content_type: 'image/jpeg')
# 5
file = URI.open('https://images.unsplash.com/photo-1508996229940-4d4af8b9f6dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
space = Space.create!(location: 'Balanstraße 73, Munich', volume: 6, condition: 'Old but gold', access: 'On a pasture', price_per_month: 2, user_id: 3, description: 'Farm shed')
space.image.attach(io: file, content_type: 'image/jpeg')
# 6
file = URI.open('https://images.unsplash.com/photo-1547333101-6bb18e609b2f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80')
space = Space.create!(location: 'Schumannstraße 2, Munich', volume: 80, condition: 'Heated, dry, clean, bright', access: 'Via doorway', price_per_month: 8, user_id: 4, description: 'Trade hall')
space.image.attach(io: file, content_type: 'image/jpeg')
# 7
file = URI.open('https://images.unsplash.com/photo-1571568154091-c6105f85ecc6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1948&q=80')
space = Space.create!(location: 'Ligsalzstraße 3, Munich', volume: 73, condition: 'Dry, unheated, quite dusty', access: 'Staircase', price_per_month: 1.5, user_id: 2, description: 'Attic')
space.image.attach(io: file, content_type: 'image/jpeg')
# 8
file = URI.open('https://images.unsplash.com/photo-1553969536-7abe08c6132d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
space = Space.create!(location: 'Isartalstr. 22, Munich', volume: 155, condition: 'Good condition, a lot of space here', access: '', price_per_month: 6, user_id: 4, description: 'School top attic')
space.image.attach(io: file, content_type: 'image/jpeg')
# 9
file = URI.open('https://images.unsplash.com/photo-1588066696414-113c404edfdf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80')
space = Space.create!(location: 'Osterseen Str. 10, Munich', volume: 78, condition: 'Dusty, unheated, dry', access: 'Via ladder', price_per_month: 3, user_id: 5, description: 'Farm loft')
space.image.attach(io: file, content_type: 'image/jpeg')
# 10
file = URI.open('https://images.unsplash.com/photo-1565462905102-140e712045aa?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
space = Space.create!(location: 'Helene-Mayer-Ring 14, Munich', volume: 3, condition: 'Dry, unstable but good looking', access: '', price_per_month: 5, user_id: 1, description: 'Corner in my room')
space.image.attach(io: file, content_type: 'image/jpeg')
# 11
file = URI.open('https://images.unsplash.com/photo-1558997519-83ea9252edf8?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
space = Space.create!(location: 'Memeler Str. 90, Munich', volume: 1, condition: 'Heated, clean, dry (best for clothes and small items)', access: 'Inside home', price_per_month: 10, user_id: 4, description: 'Cabinet')
space.image.attach(io: file, content_type: 'image/jpeg')
# 12
file = URI.open('https://images.unsplash.com/photo-1594818020972-e96e722493f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
space = Space.create!(location: 'Adlzreiterstraße 8, Munich', volume: 3, condition: 'Dry and heated if needed ', access: '', price_per_month: 10, user_id: 1, description: 'Garage')
space.image.attach(io: file, content_type: 'image/jpeg')



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







