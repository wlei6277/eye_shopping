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
for i in 1..10
    department = Department.create(
        name: Faker::Commerce.department, 
    )
    departments.push(department)
    puts "Created #{i} departments"
end

for i in 1..100
    user = User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "abc"
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
        description: "empty"
    )
    users.push(user)
    puts "Created #{i} users"
end