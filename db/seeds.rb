# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "open-uri"

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

artwork5 = Artwork.create!(name: "John Sargent - Carnation, Lily Lily", description: "Carnation, Lily, Lily, Rose is an oil-on-canvas painting made by the American painter John Singer Sargent in 1885–86. The painting depicts two small children dressed in white who are lighting paper lanterns as day turns to evening; they are in a garden strewn with pink roses, accents of yellow carnations and tall white lilies (possibly the Japanese mountain lily, Lilium auratum) behind them. The painting is dominated by green foliage, with no horizon or other horizontal line to give a sense of depth. The viewer seems to be on a level with the children but also looking down on them.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/e/ed/John_Singer_Sargent_-_Carnation%2C_Lily%2C_Lily%2C_Rose_-_Google_Art_Project.jpg')
artwork5.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork5.save!

artwork6 = Artwork.create!(name: "Vincent Van Gogh - Almond Blossom, ", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/6/68/Vincent_van_Gogh_-_Almond_blossom_-_Google_Art_Project.jpg')
artwork6.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork6.save!

artwork7 = Artwork.create!(name: "Portrait Madeleine Bernard - Paul Gauguin", description: "
  Portrait of Madeleine Bernard, 1888 This work was painted in 1888 during Gauguin's second visit to Pont-Aven, where he met up again with Emile Bernard and his young sister Madeleine, aged 17; Gauguin duly fell in love with her." )
file = URI.open('https://www.art-prints-on-demand.com/kunst/paul_gauguin/Bildnis-der-Madeleine-Bernard-Paul-Gauguin.jpg')
artwork7.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork7.save!

artwork8 = Artwork.create!(name: "Karen Margulis - Pastel of Landscape ", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('https://1.bp.blogspot.com/-leFTNcq3Wyc/VGPauHRcVqI/AAAAAAAAmZ0/wkkFOQ8ztVg/s1600/P1130695.JPG')
artwork8.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork8.save!


artwork9 = Artwork.create!(name: "Pierre-Auguste Renoir | Impressionist ", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('https://2.bp.blogspot.com/-KQbY2TSezr0/V-2WEtQm0aI/AAAAAAAADmw/s7gjZYob7egTZnGUgZObmLfyO0tS5vFCwCLcB/s1600/Pierre-Auguste%2BRenoir%2BL%2527all%25C3%25A9e%2BCouverte%252C%2B1872.jpg')
artwork9.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork9.save!

artwork10 = Artwork.create!(name: "The Alley in the Forest, Camille Pissarro ", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('https://i.pinimg.com/originals/8f/50/a9/8f50a966b660acd993f4c360dd3bd59d.jpg')
artwork10.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork10.save!

artwork10 = Artwork.create!(name: "Jackson Art - Landscape of Italy ", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('https://www.jacksonsart.com/blog/wp-content/uploads/2015/04/claude-monet-impression-sunrise.jpg')
artwork10.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork10.save!

artwork11 = Artwork.create!(name: "John Russel - Autumn Leaves", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('https://media.timeout.com/images/105273809/image.jpg')
artwork11.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork11.save!

artwork11 = Artwork.create!(name: "Claude Monet - The Lady with the Umbrella", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
file = URI.open('https://i.pinimg.com/originals/97/20/49/972049d0a1345e177b7a4676514b9bc4.jpg')
artwork11.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork11.save!
