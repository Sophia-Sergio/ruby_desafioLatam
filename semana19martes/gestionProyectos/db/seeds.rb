# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


30.times do
  Worker.create(:name => Faker::Name.name, lastname: => Faker::Name.last_name, :email => Faker::Internet.email)
end

30.times do
  Project.create(:name => Faker::Company.name, :desc => Faker::Commerce.department)
end

100.times do
  Distribution.create(:worker_id => Worker.all.pluck(:id).sample, :project_id => Project.all.pluck(:id).sample)
end
