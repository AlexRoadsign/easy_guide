# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Guide.destroy_all
Visit.destroy_all
Booking.destroy_all

(1..20).each do |count|
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        city: Faker::Address.city,
        #profile_picture:
        description: Faker::Lorem.paragraphs,
        lang1: Faker::Nation.language,
        lang2: Faker::Nation.language,
    )
    Guide.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        city: Faker::Address.city,
        #profile_picture:
        description: Faker::Lorem.paragraphs,
        lang1: Faker::Nation.language,
        lang2: Faker::Nation.language,
    )
end
