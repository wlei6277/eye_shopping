# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
departments = []
users = []
products = []
comments = []

for i in 1..10
    department = Department.create(
        name: Faker::Commerce.department, 
    )
    departments.push(department)
    puts "Created #{i} departments"
end

for i in 1..50
    user = User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: 'topsecret',
        password_confirmation: 'topsecret',
        picture: Faker::Avatar.image
    )
    users.push(user)
    puts "Created #{i} users"
    product = Product.create(
        user_id: i,
        name: Faker::Commerce.product_name,
        price: rand(1..100),
        department_id: rand(1..10),
        color: rand(1..5),
        url_link: "www.google.com",
        description: "empty".
        picture: Faker::Avatar.image
    )
    users.push(user)
    puts "Created #{i} products"
end

for i in 1..10
    comment = Comment.create(
        product_id: rand(1..50),
        user_id: i,
        body: Faker::Lorem.sentence, 
    )
    comments.push(comment)
    puts "Created #{i} comments"
end

for i in 1...50
    follower = Follower.create(follower_id:i, following_id: (50-i))
    puts "Created #{i} followers"
end

for i in 1..50
    favourite = Favourite.create(user_id:i, product_id: i)
    puts "Created #{i} favourites"
end

