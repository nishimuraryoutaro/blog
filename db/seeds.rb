# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
jonh = User.create!(email: 'jonh4@example.com', password: 'password123')
mily = User.create!(email: 'mily4@example.com', password: 'password123')

5.times do
jonh.articles.create!(
  title: Faker::Lorem.sentence(word_count: 10),
  content: Faker::Lorem.sentence(word_count: 100)
)
end

5.times do
mily.articles.create!(
  title: Faker::Lorem.sentence(word_count: 10),
  content: Faker::Lorem.sentence(word_count: 100)
)
end
