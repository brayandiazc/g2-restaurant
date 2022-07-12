puts "Importing users..."
100.times do
  user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    password_confirmation: "123456",
    name: Faker::Name.name_with_middle,
    bio: Faker::Lorem.paragraph_by_chars(number: 512),
    category_id: rand(1..5),
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
    role: Faker::Number.between(from: 0, to: 3),
  )
  user.save!
end
