require 'open-uri'

# User.destroy_all
Space.destroy_all
puts "Cleared space and user records"

# User.create!()
demo_user = User.last

file = URI.open('https://images.unsplash.com/photo-1581143761812-6d1474cdb9d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
space = Space.create!(location: "Erich-Kästner-Str. 11, München", volume: 4, price_per_month: 25, user: demo_user)
space.image.attach(io: file, filename: 'spaceabc.png', content_type: 'image/jpeg')
Space.create!(location: "Helene-Mayer-Ring 14, 80809 München",volume: 3, price_per_month: 15, user: demo_user)
Space.create!(location: "Helene-Mayer-Ring 14, 80809 München", volume: 3, price_per_month: 15, user: demo_user, condition: 'Cannot be used for non-water-proof items', access: 'Accessible by car', description: 'Test description')
puts "Created three spaces"
