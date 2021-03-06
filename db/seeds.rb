# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

puts "Importing categories..."
CSV.foreach(Rails.root.join("db/seeds/csv/categories.csv"), headers: true) do |row|
  Category.create! do |category|
    category.id = row[0]
    category.name = row[1]
    category.available = row[2]
  end
end

puts "Importing saucers..."
CSV.foreach(Rails.root.join("db/seeds/csv/saucers.csv"), headers: true) do |row|
  Saucer.create! do |saucer|
    saucer.id = row[0]
    saucer.name = row[1]
    saucer.available = row[2]
  end
end

# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "users.rb"))'
