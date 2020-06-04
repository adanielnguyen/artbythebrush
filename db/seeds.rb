# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "reseting database"
FollowedRelationship.destroy_all
Artwork.destroy_all
User.destroy_all
Tag.destroy_all

puts "creating users"
user1 = User.create!(email: "henry@gmail.com", password:"password")
user2 = User.create!(email: "user2@hotmail.com", password:"password")
user3 = User.create!(email: "user3@hotmail.com", password:"password")
user4 = User.create!(email: "user4@hotmail.com", password:"password")

oil = Tag.create!(text: "oil")
pastel = Tag.create!(text: "pastel")
hands = Tag.create!(text: "hands")
black = Tag.create!(text: "black")

# FollowedRelationship.create!(record: oil, user: user1)
# FollowedRelationship.create!(record: user2, user: user1)
# FollowedRelationship.create!(record: user3, user: user1)
# FollowedRelationship.create!(record: black, user: user1)

artwork1 = Artwork.create!(name: "Water Lilies 1906 - Claude Monet", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting"  )
file = URI.open('http://art-monet.com/image/1900/1906%20Water%20Lilies7.jpg')
artwork1.images.attach(io: file, filename: 'nes.png', content_type: 's/png')
artwork1.save!

artwork2 = Artwork.create!(name: "Claude Monet - Springtime in Vetheuil 1880", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('http://art-monet.com/image/1880/1880%20Springtime%20in%20Vetheuil.jpg')
artwork2.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork2.save!

artwork3 = Artwork.create!(name: "Claude Monet - Water Lilies 1907", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('http://art-monet.com/image/1900/1907%20Water%20Lilies%20(2).jpg')
artwork3.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork3.save!

artwork4 = Artwork.create!(name: "Claude Monet - Floating Ice on the Seine 1880", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('http://art-monet.com/image/1880/1880%20Floating%20Ice%20on%20the%20Seine.jpg')
artwork4.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork4.save!
