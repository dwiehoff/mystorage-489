
# Please create user from devise interface first before running seed

# User.destroy_all
Space.destroy_all
puts "Cleared space and reservation records"

demo_user = User.last

Space.create!(location: "Erich-Kästner-Str. 11, München", volume: 4, price_per_month: 25, user: demo_user)
Space.create!(location: "Helene-Mayer-Ring 14, 80809 München",volume: 3, price_per_month: 15, user: demo_user)
Space.create!(location: "Helene-Mayer-Ring 14, 80809 München", volume: 3, price_per_month: 15, user: demo_user, condition: 'Cannot be used for non-water-proof items', access: 'Accessible by car', description: 'Test description')
puts "#{Space.count} spaces in the DB. Last one located at #{Space.last.location}"

Reservation.create!(space: Space.last, user: User.last, start_date: Date.parse('17 Nov 2020'), end_date: Date.parse('20 Nov 2020'), is_confirmed: false)
puts "#{Reservation.count} reservation(s) in the database. Last one from #{Reservation.last.start_date} to #{Reservation.last.end_date}"
