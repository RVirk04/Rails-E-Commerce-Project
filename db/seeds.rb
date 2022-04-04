# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

Category.destroy_all

# Add file path of the csv file
csv_file = Rails.root.join('db/categories.csv')

csv_data = File.read(csv_file)
category = CSV.parse(csv_data, headers: true, encoding: 'iso-8859-1')

category.each do |cat|
  category = Category.find_or_create_by(name: cat["category"])
end