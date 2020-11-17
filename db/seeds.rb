
# User.destroy_all
Space.destroy_all
puts "Cleared space and user records"

# User.create!()
demo_user = User.last

Space.create!(location: "Erich-Kästner-Str. 11, München", volume: 4, price_per_month: 25, user: demo_user)
Space.create!(location: "Helene-Mayer-Ring 14, 80809 München",volume: 3, price_per_month: 15, user: demo_user)
Space.create!(location: "Helene-Mayer-Ring 14, 80809 München", volume: 3, price_per_month: 15, user: demo_user, condition: 'Cannot be used for non-water-proof items', access: 'Accessible by car', description: 'Test description')
puts "Created three spaces"
