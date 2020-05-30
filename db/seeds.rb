# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FollowedRelationship.destroy_all
User.destroy_all
Tag.destroy_all

user1 = User.create!(email: "user1@hotmail.com", password:"password")
user2 = User.create!(email: "user2@hotmail.com", password:"password")
user3 = User.create!(email: "user3@hotmail.com", password:"password")
user4 = User.create!(email: "user4@hotmail.com", password:"password")

oil = Tag.create!(text: "oil")
pastel = Tag.create!(text: "pastel")
hands = Tag.create!(text: "hands")
black = Tag.create!(text: "black")

FollowedRelationship.create!(record: oil, user: user1)
FollowedRelationship.create!(record: user2, user: user1)
FollowedRelationship.create!(record: user3, user: user1)
FollowedRelationship.create!(record: black, user: user1)
