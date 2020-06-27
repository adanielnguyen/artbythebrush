# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "open-uri"

puts "reseting database"

Follow.destroy_all
Like.destroy_all
#Taggings.destroy_all
Tag.destroy_all
CollectionFavourite.destroy_all
Favourite.destroy_all
Curate.destroy_all
Artwork.destroy_all
Collection.destroy_all
Gallery.destroy_all
Artwork.destroy_all
User.destroy_all



puts "creating users"
user1 = User.create!(name: "Daniel Nguyen", email: "daniel@gmail.com", password:"password")
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593055803/Screen_Shot_2020-06-25_at_1.29.26_pm_hmg1z4.png')
user1.avatar.attach(io: file, filename: 'nes.png', content_type: 's/png')
user1.save!

user2 = User.create!(name: "Laura Pritchett", email: "user2@hotmail.com", password:"password")
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593065122/Screen_Shot_2020-06-25_at_4.04.31_pm_klq0mh.png')
user2.avatar.attach(io: file, filename: 'nes.png', content_type: 's/png')
user2.save!


user3 = User.create!(name: "Claude Monet", email: "user3@hotmail.com", password:"password")
file = URI.open('https://www.biography.com/.image/t_share/MTIwNjA4NjMzOTE3NzY5MjI4/claude-monet-wc-9411771-2-402.jpg')
user3.avatar.attach(io: file, filename: 'nes.png', content_type: 's/png')
user3.save!

user4 = User.create!(name: "Vincent Van Gogh", email: "user4@hotmail.com", password:"password")
file = URI.open('https://www.biography.com/.image/t_share/MTY2NTIzMzc4MTI2MDM4MjM5/vincent_van_gogh_self_portrait_painting_musee_dorsay_via_wikimedia_commons_promojpg.jpg')
user4.avatar.attach(io: file, filename: 'nes.png', content_type: 's/png')
user4.save!

user5 = User.create!(name: "John Russell", email: "user5@hotmail.com", password:"password")
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593176733/Screen_Shot_2020-06-26_at_11.04.57_pm_l8boei.png')
user5.avatar.attach(io: file, filename: 'nes.png', content_type: 's/png')
user5.save!

user6 = User.create!(name: "Henry Lay", email: "henry6@hotmail.com", password:"password")
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593185820/Screen-Shot-2020-06-27-at-1.35.00-am-ConvertImage_stesbi.jpg')
user6.avatar.attach(io: file, filename: 'nes.png', content_type: 's/png')
user6.save!

user7 = User.create!(name: "Karen Margulis", email: "user6@hotmail.com", password:"password")
file = URI.open('https://i.etsystatic.com/iusa/e06956/37184188/iusa_400x400.37184188_2n39.jpg?version=0')
user7.avatar.attach(io: file, filename: 'nes.png', content_type: 's/png')
user7.save!

user8 = User.create!(name: "Gosia", email: "user7@hotmail.com", password:"password")
file = URI.open('https://d38we5ntdyxyje.cloudfront.net/940038/profile/BMYAUMHO_avatar_medium_square.jpg')
user8.avatar.attach(io: file, filename: 'nes.png', content_type: 's/png')
user8.save!


# oil = Tag.create!(text: "oil")
# pastel = Tag.create!(text: "pastel")
# hands = Tag.create!(text: "hands")
# black = Tag.create!(text: "black")

# FollowedRelationship.create!(record: oil, user: user1)
# FollowedRelationship.create!(record: user2, user: user1)
# FollowedRelationship.create!(record: user3, user: user1)
# FollowedRelationship.create!(record: black, user: user1)

puts "creating artworks"
artwork1 = Artwork.create!(name: "Water Lilies - Claude Monet 1906", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user3, medium: "Oil Painting", date_created: "2007/11/10" )
file = URI.open('http://art-monet.com/image/1900/1906%20Water%20Lilies7.jpg')
artwork1.images.attach(io: file, filename: 'nes.png', content_type: 's/png')
artwork1.save!

artwork2 = Artwork.create!(name: "Springtime in Vetheuil - Claude Monet 1880", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user3, medium: "Oil Painting" )
file = URI.open('http://art-monet.com/image/1880/1880%20Springtime%20in%20Vetheuil.jpg')
artwork2.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork2.save!

artwork3 = Artwork.create!(name: "Water Lilies - Claude Monet 1907", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user3, medium: "Oil Painting" )
file = URI.open('http://art-monet.com/image/1900/1907%20Water%20Lilies%20(2).jpg')
artwork3.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork3.save!

artwork4 = Artwork.create!(name: "Floating Ice on the Seine - Claude Monet 1880", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user3, medium: "Oil Painting" )
file = URI.open('http://art-monet.com/image/1880/1880%20Floating%20Ice%20on%20the%20Seine.jpg')
artwork4.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork4.save!


artwork5 = Artwork.create!(name: "Carnation, Lily Lily - John Sargent", description: "Carnation, Lily, Lily, Rose is an oil-on-canvas painting made by the American painter John Singer Sargent in 1885–86. The painting depicts two small children dressed in white who are lighting paper lanterns as day turns to evening; they are in a garden strewn with pink roses, accents of yellow carnations and tall white lilies (possibly the Japanese mountain lily, Lilium auratum) behind them. The painting is dominated by green foliage, with no horizon or other horizontal line to give a sense of depth. The viewer seems to be on a level with the children but also looking down on them.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/e/ed/John_Singer_Sargent_-_Carnation%2C_Lily%2C_Lily%2C_Rose_-_Google_Art_Project.jpg')
artwork5.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork5.save!

artwork6 = Artwork.create!(name: "Almond Blossom - Vincent Van Gogh", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user4, medium: "Oil Painting" )
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/6/68/Vincent_van_Gogh_-_Almond_blossom_-_Google_Art_Project.jpg')
artwork6.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork6.save!

artwork7 = Artwork.create!(name: "Portrait Madeleine Bernard - Paul Gauguin", description: "
  Portrait of Madeleine Bernard, 1888 This work was painted in 1888 during Gauguin's second visit to Pont-Aven, where he met up again with Emile Bernard and his young sister Madeleine, aged 17; Gauguin duly fell in love with her.", genre: "Impressionism Painting", user: user4, medium: "Oil Painting" )
file = URI.open('https://www.art-prints-on-demand.com/kunst/paul_gauguin/Bildnis-der-Madeleine-Bernard-Paul-Gauguin.jpg')
artwork7.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork7.save!

artwork8 = Artwork.create!(name: "Pastel of Landscape - Karen Margulis", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user7, medium: "Oil Painting" )
file = URI.open('https://1.bp.blogspot.com/-leFTNcq3Wyc/VGPauHRcVqI/AAAAAAAAmZ0/wkkFOQ8ztVg/s1600/P1130695.JPG')
artwork8.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork8.save!


artwork9 = Artwork.create!(name: "Impressionist - Pierre-Auguste Renoir", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user4, medium: "Oil Painting" )
file = URI.open('https://2.bp.blogspot.com/-KQbY2TSezr0/V-2WEtQm0aI/AAAAAAAADmw/s7gjZYob7egTZnGUgZObmLfyO0tS5vFCwCLcB/s1600/Pierre-Auguste%2BRenoir%2BL%2527all%25C3%25A9e%2BCouverte%252C%2B1872.jpg')
artwork9.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork9.save!

artwork10b = Artwork.create!(name: "The Alley in the Forest - Camille Pissarro ", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://i.pinimg.com/originals/8f/50/a9/8f50a966b660acd993f4c360dd3bd59d.jpg')
artwork10b.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork10b.save!

artwork10 = Artwork.create!(name: "Landscape of Italy - Jackson Art ", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://www.jacksonsart.com/blog/wp-content/uploads/2015/04/claude-monet-impression-sunrise.jpg')
artwork10.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork10.save!

artwork11 = Artwork.create!(name: "John Russell - Autumn Leaves", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user5, medium: "Oil Painting" )
file = URI.open('https://media.timeout.com/images/105273809/image.jpg')
artwork11.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork11.save!

artwork11a = Artwork.create!(name: "The Lady with the Umbrella - Claude Monet 1901", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user3, medium: "Oil Painting" )
file = URI.open('https://i.pinimg.com/originals/97/20/49/972049d0a1345e177b7a4676514b9bc4.jpg')
artwork11a.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork11a.save!

artwork12 = Artwork.create!(name: "Cliffs at Pourville (1882) by Claude Monet", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pdmonet-a21450.jpg?bg=transparent&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-3.1.0&q=80&usm=15&vib=3&w=1300&s=a8c6a4b6061ac49fc999dcfb8a8b1609')
artwork12.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork12.save!

#My artwork

artwork29 = Artwork.create!(name: "Garden of Roses - Daniel Nguyen 2018", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Brunswick, Victoria. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593171451/Daniel_s_Painting_ohktmv.png')
artwork29.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork29.save!

##########

artwork13 = Artwork.create!(name: "Summer Farm by Daniel Keys", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/51b4c595e4b087d92d55a28e/1566279415892-3BVQIQ4EA8AXB2WUO5JJ/ke17ZwdGBToddI8pDm48kFZ_TiMCkH0iAeVMJaqkULV7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0hHMyhIh2kKzuOL3ydJCryAEoNQwr2VM5LgGEhKvLDjdIpZeiUMl_tpck7juxv3Nlw/IMG_0232.jpg?format=2500w')
artwork13.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork13.save!

artwork14 = Artwork.create!(name: "Portrait of the Postman - Vincent Van Gogh", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user4, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/51b4c595e4b087d92d55a28e/1566691464247-9RR9I7YV3CM1Y2AK9FLK/ke17ZwdGBToddI8pDm48kPZywt-8BENWjLhsMNQxPyx7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iXS6XmVv7bUJ418E8Yoc1hq-tFSunKypXGy8Xht54XEUtdxEzBS9wkMa88Vfcz7kQ/IMG_0282-2.jpg?format=2500w')
artwork14.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork14.save!

artwork15 = Artwork.create!(name: "Floral Sculpture by Gosia May", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://i.pinimg.com/564x/6f/fc/44/6ffc441151d6cc0ba6d171f161a83467.jpg')
artwork15.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork15.save!

artwork16 = Artwork.create!(name: "Wythfield by Van Han", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/a6afc823958009102b4759c28bce8f5c/531adec464521959-ab/s1280x1920/207d7aa5c3f2827742dee99ae05bda7865c0e377.png')
artwork16.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork16.save!



artwork17 = Artwork.create!(name: "Portrait of Anna by Richard Hableton 1991", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/aeb8418651822754b7b99135d70c6e5b/531adec464521959-93/s540x810/f202043be438ac3df03fd6d797fff867315a839c.jpg')
artwork17.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork17.save!

artwork18 = Artwork.create!(name: "Springtime Love by Richard Hableton 1975", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/88afbd2ed21e5bc1e00e55d92ddd9a52/5e30c2f6605cfc4d-b2/s640x960/1e9319dcd95b4d629910ce02cde8bb7ab11de2bb.jpg')
artwork18.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork18.save!

artwork19 = Artwork.create!(name: "Converse by Richard Hableton 1975", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/5920915a06625ba93c8aac7d761a6e6d/ce590c3977be00b8-fa/s2048x3072/86a7a0e4aa0e854bfbacf07bb4f11fe813460131.jpg')
artwork19.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork19.save!

artwork20 = Artwork.create!(name: "Sculpture by Alicia Hayes", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/5be4958d2f3c8e75ad2d66bf9dde5d20/188bcc8401669f10-a4/s1280x1920/1e16818f6ceb9d802c2a7d70fa88131f95e81047.jpg')
artwork20.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork20.save!

artwork21 = Artwork.create!(name: "Sandfields by Peter Skinds", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532792989754-RDFEAMAP1R0J8X8J5A1B/ke17ZwdGBToddI8pDm48kJeMm9KtJH4741FW3oskMpB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Uc9PmzPJRFa4g8CwUK9Q2KnrcpwiJHXv6SblNo84BXOuZ5819XDE-T-fE_EmFUjQwQ/LP_WHITESANDS_SUNSET.JPG?format=1500w')
artwork21.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork21.save!

artwork22 = Artwork.create!(name: "Patience by Laura Pritchett 2014", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532793052662-WLKLKQGQE8TL701IN75B/ke17ZwdGBToddI8pDm48kNiEM88mrzHRsd1mQ3bxVct7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0s0XaMNjCqAzRibjnE_wBlkZ2axuMlPfqFLWy-3Tjp4nKScCHg1XF4aLsQJlo6oYbA/Laura_Pritchett_Patience.jpg?format=1500w')
artwork22.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork22.save!

artwork24 = Artwork.create!(name: "Above by Laura Pritchett 2014", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532793366578-H4NWRSS9KFGR3HJQMFQI/ke17ZwdGBToddI8pDm48kGbRiyPki_EyHcjPCyx12CV7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwD1g8DYbkhCsgrhnj8CXbhR6VpMuMO3VUBAu8HErKUakpOm9R9l-sGhmSz5oguFw/laurapritchett_Above_1.jpg?format=1500w')
artwork24.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork24.save!

artwork25 = Artwork.create!(name: "The Quiet - Laura Pritchett 2015", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532793428465-ISJLPZELR04EQCN4MX62/ke17ZwdGBToddI8pDm48kAms-YFqCEzVWtxEmk_n6yJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0s2R59z2HWVKMNU9GXmUK4W9GsA4lsq1MYoWLKFqhfw8zBms60U-eXAfClfwABDCBA/laurapritchett_thequiet_4.jpg?format=1500w')
artwork25.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork25.save!




# Laura's exhibition and artworks
gallery4 = Gallery.create!(name: "Wythfield", start_date: "2020/03/02", end_date: "2020/03/05", description: "Daniel’s Australian Landscapes has had a lasting impact on Australian modern art and led to the naming of one of its best-known movements—post Impressionism. But Daniel; did not create his painting in a vacuum. Various artists and their painting techniques helped the young man to develop his ideas and to hone the now-signature rough, immediate and unfinished style captured so distinctively in this seminal work. Daniel’s influences stretched beyond his friends, teachers and mentors such as Eugène Boudin and Johan Barthold Jongkind, to artists working earlier in the nineteenth century, a period when landscape painting changed dramatically. British painters, especially JMW Turner and Richard Parkes Bonington, had inspired the French Barbizon School and Realist artists including Charles Daubigny, Camille Corot, Gustave Courbet. In the late nineteenth century, pure landscape became recognised as a serious and meaningful genre of painting. Monet was central: using oil paint on canvas to capture fleeting moments and fluctuating conditions, he forever changed attitudes to landscape, painting and art.", user: user2)
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532793428465-ISJLPZELR04EQCN4MX62/ke17ZwdGBToddI8pDm48kAms-YFqCEzVWtxEmk_n6yJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0s2R59z2HWVKMNU9GXmUK4W9GsA4lsq1MYoWLKFqhfw8zBms60U-eXAfClfwABDCBA/laurapritchett_thequiet_4.jpg?format=1500w')
gallery4.image.attach(io: file, filename: 'nes.png', content_type: 's/png')
gallery4.save!

curate16 = Curate.create!(artwork: artwork24, gallery: gallery4)
curate17 = Curate.create!(artwork: artwork25, gallery: gallery4)
curate18 = Curate.create!(artwork: artwork22, gallery: gallery4)

# -------------------------------
# Claude Monet Gallery

gallery1 = Gallery.create!(name: "Impression Sunrise", start_date: "2019/01/02", end_date: "2020/03/04", description: "Claude Monet’s Impression, sunrise has had a lasting impact on modern art and led to the naming of one of its best-known movements—Impressionism. But Monet did not create his painting in a vacuum. Various artists and their painting techniques helped the young man to develop his ideas and to hone the now-signature rough, immediate and unfinished style captured so distinctively in this seminal work. Monet’s influences stretched beyond his friends, teachers and mentors such as Eugène Boudin and Johan Barthold Jongkind, to artists working earlier in the nineteenth century, a period when landscape painting changed dramatically. British painters, especially JMW Turner and Richard Parkes Bonington, had inspired the French Barbizon School and Realist artists including Charles Daubigny, Camille Corot, Gustave Courbet. In the late nineteenth century, pure landscape became recognised as a serious and meaningful genre of painting. Monet was central: using oil paint on canvas to capture fleeting moments and fluctuating conditions, he forever changed attitudes to landscape, painting and art.", user_id: user3.id)
file = URI.open('http://art-monet.com/image/1900/1906%20Water%20Lilies7.jpg')
gallery1.image.attach(io: file, filename: 'nes.png', content_type: 's/png')
gallery1.save!



artwork26 = Artwork.create!(name: "Les Tuileries 1876 - Claude Monet", description: "In Monet’s Les Tuileries 1876 we feel the harsh light and suffocating heat of a Parisian summer. The scene, although recognisably urban,1 seems devoid of human life: it’s as if the visitors have taken refuge in the shade, leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 1880s, he explored in greater detail through various series, most famously the Haystacks.", medium: "oil on canvas", genre: "Impressionism Painting", user: user3 )
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/2/2b/Monet-Tuileries-Marmottan.jpg')
artwork26.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork26.save!

artwork27 = Artwork.create!(name: "The rowing boat [La Barque] 1887 - Claude Monet", description: "In his early years at Giverny Monet painted several canvases with rowboats—sometimes with people, occasionally without. His subject was, of course, the surface of the water and the reflections in it, but he used the simplified structure of the vessel, and his stepdaughters Suzanne and Blanche Hoschedé, to animate the composition. Elsewhere the young women are shown fishing and navigating a skiff—In the ‘norvegienne’ c 1887 or The pink skiff 1890—sitting in the garden or walking in the meadows, a seemingly bucolic existence.2 In these paintings, many of them sketch‑like and apparently unfinished, the figures appear meditative, their stillness emphasised by reflections. After 1890, the human form is entirely absent from Monet’s work.", medium: "oil on canvas", genre: "Impressionism Painting", user: user3)
file = URI.open('https://i.pinimg.com/originals/3c/35/36/3c3536a1a84779227905c812e740709f.jpg')
artwork27.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork27.save!

artwork28 = Artwork.create!(name: "On the beach at Trouville [Sur la plage à Trouville] 1870", description: "On 8 April 1867, long before their marriage took place, Monet had written from Paris to advise his father Alphonse of the imminent birth of his child with Camille Doncieux. His father, supported by his aunt, Madame Lecadre, responded by threatening to cancel the family’s financial support for Monet unless he abandoned Camille and their illegitimate child. Monet was distraught by the impossible choice between leaving his mistress and child and losing the family allowance which helped to support them and allowed him to continue as a painter. His solution was a ruse, agreeing to leave the pregnant Camille and return to the family fold, while secretly providing for his pregnant mistress in part by selling his painting Women in the garden 1866–67,1 featuring Camille, to his friend Jean‑Frèdèric Bazille. Monet moved to the family villa at Sainte‑Adresse, once a modest location for fisherman and now a fashionable seaside resort north‑west of Le Havre. Here he created multiple seascapes, some of which included his father and Madame Lecadre, but with Camille noticeably absent.", medium: "oil on canvas", genre: "Impressionism Painting", user: user3)
file = URI.open('https://i.pinimg.com/originals/fe/8a/3e/fe8a3e6775dd926112a6af2521c353b9.jpg')
artwork28.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork28.save!


# ------------------------------------------
# John Russell Gallery
gallery2 = Gallery.create!(name: "An Introspective: John Russell", start_date: "2020/01/02", end_date: "2020/03/04", description: "Claude Monet’s Impression, sunrise has had a lasting impact on modern art and led to the naming of one of its best-known movements—Impressionism. But Monet did not create his painting in a vacuum. Various artists and their painting techniques helped the young man to develop his ideas and to hone the now-signature rough, immediate and unfinished style captured so distinctively in this seminal work. Monet’s influences stretched beyond his friends, teachers and mentors such as Eugène Boudin and Johan Barthold Jongkind, to artists working earlier in the nineteenth century, a period when landscape painting changed dramatically. British painters, especially JMW Turner and Richard Parkes Bonington, had inspired the French Barbizon School and Realist artists including Charles Daubigny, Camille Corot, Gustave Courbet. In the late nineteenth century, pure landscape became recognised as a serious and meaningful genre of painting. Monet was central: using oil paint on canvas to capture fleeting moments and fluctuating conditions, he forever changed attitudes to landscape, painting and art.", user: user5)
file = URI.open('https://i.pinimg.com/564x/40/34/54/40345454b765784f55c74a455f831248.jpg')
gallery2.image.attach(io: file, filename: 'nes.png', content_type: 's/png')
gallery2.save!


# John Russell Artworks
artwork40 = Artwork.create!(name: "Peonies and Head of a Woman - John Russell 1887", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user5 )
file = URI.open('https://i.pinimg.com/564x/40/34/54/40345454b765784f55c74a455f831248.jpg')
artwork40.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork40.save!

artwork41 = Artwork.create!(name: "Alpes Maritimes from Antibes - John Russell 1891", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build th mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user5 )
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/John_Russell_-_In_the_morning%2C_Alpes_Maritimes_from_Antibes_-_Google_Art_Project.jpg/2560px-John_Russell_-_In_the_morning%2C_Alpes_Maritimes_from_Antibes_-_Google_Art_Project.jpg')
artwork41.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork41.save!


artwork42 = Artwork.create!(name: "Rough Sea, Mirca - John Russell 1900", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build th mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user5 )
file = URI.open('https://media.artgallery.nsw.gov.au/collection_images/Alpha/OA14.1968%23%23S.jpg')
artwork42.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork42.save!

artwork43 = Artwork.create!(name: "Rough Sea, Mirca - John Russell 1900", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build th mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user5 )
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593179966/Screen_Shot_2020-06-26_at_11.58.24_pm_bwuaim.png')
artwork43.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork43.save!

curate4 = Curate.create!(artwork: artwork40, gallery: gallery2)
curate5 = Curate.create!(artwork: artwork41, gallery: gallery2)
curate6 = Curate.create!(artwork: artwork42, gallery: gallery2)
curate7 = Curate.create!(artwork: artwork43, gallery: gallery2)



# karen's exhibition and artworks
gallery5 = Gallery.create!(name: "Pastels and Textures", start_date: "2020/02/02", end_date: "2020/07/07", description: "Daniel’s Australian Landscapes has had a lasting impact on Australian modern art and led to the naming of one of its best-known movements—post Impressionism. But Daniel; did not create his painting in a vacuum. Various artists and their painting techniques helped the young man to develop his ideas and to hone the now-signature rough, immediate and unfinished style captured so distinctively in this seminal work. Daniel’s influences stretched beyond his friends, teachers and mentors such as Eugène Boudin and Johan Barthold Jongkind, to artists working earlier in the nineteenth century, a period when landscape painting changed dramatically. British painters, especially JMW Turner and Richard Parkes Bonington, had inspired the French Barbizon School and Realist artists including Charles Daubigny, Camille Corot, Gustave Courbet. In the late nineteenth century, pure landscape became recognised as a serious and meaningful genre of painting. Monet was central: using oil paint on canvas to capture fleeting moments and fluctuating conditions, he forever changed attitudes to landscape, painting and art.", user: user7)
file = URI.open('https://1.bp.blogspot.com/-leFTNcq3Wyc/VGPauHRcVqI/AAAAAAAAmZ0/wkkFOQ8ztVg/s1600/P1130695.JPG')
gallery5.image.attach(io: file, filename: 'nes.png', content_type: 's/png')
gallery5.save!

artwork44 = Artwork.create!(name: "Lavender Fields", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build th mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user7 )
file = URI.open('https://1.bp.blogspot.com/-leFTNcq3Wyc/VGPauHRcVqI/AAAAAAAAmZ0/wkkFOQ8ztVg/s1600/P1130695.JPG')
artwork44.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork44.save!


curate19 = Curate.create!(artwork: artwork8, gallery: gallery5)
curate20 = Curate.create!(artwork: artwork44, gallery: gallery5)
curate21 = Curate.create!(artwork: artwork22, gallery: gallery5)

#-----------------------------------------
# Daniel's exhibition and artworks
gallery3 = Gallery.create!(name: "Australian Landscapes", start_date: "2019/01/02", end_date: "2020/03/04", description: "Daniel’s Australian Landscapes has had a lasting impact on Australian modern art and led to the naming of one of its best-known movements—post Impressionism. But Daniel; did not create his painting in a vacuum. Various artists and their painting techniques helped the young man to develop his ideas and to hone the now-signature rough, immediate and unfinished style captured so distinctively in this seminal work. Daniel’s influences stretched beyond his friends, teachers and mentors such as Eugène Boudin and Johan Barthold Jongkind, to artists working earlier in the nineteenth century, a period when landscape painting changed dramatically. British painters, especially JMW Turner and Richard Parkes Bonington, had inspired the French Barbizon School and Realist artists including Charles Daubigny, Camille Corot, Gustave Courbet. In the late nineteenth century, pure landscape became recognised as a serious and meaningful genre of painting. Monet was central: using oil paint on canvas to capture fleeting moments and fluctuating conditions, he forever changed attitudes to landscape, painting and art.", user: user1)
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593171451/Daniel_s_Painting_ohktmv.png')
gallery3.image.attach(io: file, filename: 'nes.png', content_type: 's/png')
gallery3.save!


artwork30 = Artwork.create!(name: "Flower Garden in Mt Dandenong National Park - Daniel Nguyen 2018", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593173446/Screen_Shot_2020-06-26_at_10.07.46_pm_izf3gj.png')
artwork30.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork30.save!

artwork32 = Artwork.create!(name: "Mount Macedon - Daniel Nguyen 2015", description: "In the meadows in Mount Macedon, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. ", medium: "Oil On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://images.fasosites.com/18545_686458xl.jpg?sold=Sold&hdots=False&v=201711030026&cv=201711030026')
artwork32.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork32.save!

artwork33 = Artwork.create!(name: "Bright Autumn Falls - Daniel Nguyen 2015", description: "In Autumn, in the meadows in Mount Macedon, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon.", medium: "Oil On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://images.fasosites.com/18545_3542595x2560+v=202004202008/texas-red.jpg')
artwork33.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork33.save!

artwork34 = Artwork.create!(name: "Spring Interlude - Daniel Nguyen 2014", description: "In Autumn, in the meadows in Mount Macedon, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon.", medium: "Oil On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://images.fasosites.com/18545_550161xl.jpg?sold=Sold&hdots=False&v=201711030026&cv=201711030026')
artwork34.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork34.save!

artwork35 = Artwork.create!(name: "Spring Interlude II - Daniel Nguyen 2016", description: "In Autumn, in the meadows in Mount Macedon, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon.", medium: "Oil On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://images.fasosites.com/18545_550140xl.jpg?sold=Sold&hdots=False&v=201711030026&cv=201711030026')
artwork35.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork35.save!

artwork36 = Artwork.create!(name: "Spiritual Hands - Daniel Nguyen 2018", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://res.cloudinary.com/dybthmrxc/image/upload/v1593173446/Screen_Shot_2020-06-26_at_10.07.46_pm_izf3gj.png')
artwork36.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork36.save!

artwork37 = Artwork.create!(name: "Roses Meadow - Daniel Nguyen 2013", description: "In Autumn, in the meadows in Mount Macedon, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon.", medium: "Pastel On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://1.bp.blogspot.com/-7IiCw5zRvHg/XvNFfCldL9I/AAAAAAAA2TY/fKaOEEghR50XCC3Fb1xJ3AHiZ8WidAJ2QCLcBGAsYHQ/s1600/fullsizeoutput_a1f.jpeg')
artwork36.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork36.save!



artwork38 = Artwork.create!(name: "Wheatfields - Daniel Nguyen 2013", description: "In Autumn, in the meadows in Mount Macedon, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon.", medium: "Pastel On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://1.bp.blogspot.com/-TxtitSWTtU8/Xs-wSNa2wiI/AAAAAAAA2OU/WxnPk3rFF64gaSBGiz6_J6SAUkhHIvO1QCLcBGAsYHQ/s1600/fullsizeoutput_9a8.jpeg')
artwork38.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork38.save!

artwork39 = Artwork.create!(name: "Garden Fields - Daniel Nguyen 2013", description: "In Autumn, in the meadows in Mount Macedon, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon.", medium: "Pastel On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://1.bp.blogspot.com/-1J3EdgT_ql8/Xsqb-crhMNI/AAAAAAAA2L4/spXdrEg62UweGUqVDEM9L4Tof5jP5fftQCLcBGAsYHQ/s1600/fullsizeoutput_993.jpeg')
artwork39.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork39.save!

artwork39a = Artwork.create!(name: "Purple Roses - Daniel Nguyen 2013", description: "In Autumn, in the meadows in Mount Macedon, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon.", medium: "Pastel On Canvas", genre: "Impressionism", user: user1 )
file = URI.open('https://1.bp.blogspot.com/-enIaQOkqgMc/XsVfn5_cygI/AAAAAAAA2Kc/9KEdd8oEzBwcFbjIB69cPKsqfWzQUywEgCLcBGAsYHQ/s1600/fullsizeoutput_979.jpeg')
artwork39a.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork39a.save!

curate8 = Curate.create!(artwork: artwork29, gallery: gallery3)
curate9 = Curate.create!(artwork: artwork30, gallery: gallery3)
curate10 = Curate.create!(artwork: artwork32, gallery: gallery3)
curate11 = Curate.create!(artwork: artwork33, gallery: gallery3)
curate12 = Curate.create!(artwork: artwork34, gallery: gallery3)
curate13 = Curate.create!(artwork: artwork35, gallery: gallery3)
curate14 = Curate.create!(artwork: artwork36, gallery: gallery3)
# curate15 = Curate.create!(artwork: artwork37, gallery: gallery3)




#------------------------------------------------------
#gosia may
gallery6 = Gallery.create!(name: " Hi-Fructose Sculptures", start_date: "2020/01/02", end_date: "2020/07/08", description: "Claude Monet’s Impression, sunrise has had a lasting impact on modern art and led to the naming of one of its best-known movements—Impressionism. But Monet did not create his painting in a vacuum. Various artists and their painting techniques helped the young man to develop his ideas and to hone the now-signature rough, immediate and unfinished style captured so distinctively in this seminal work. Monet’s influences stretched beyond his friends, teachers and mentors such as Eugène Boudin and Johan Barthold Jongkind, to artists working earlier in the nineteenth century, a period when landscape painting changed dramatically. British painters, especially JMW Turner and Richard Parkes Bonington, had inspired the French Barbizon School and Realist artists including Charles Daubigny, Camille Corot, Gustave Courbet. In the late nineteenth century, pure landscape became recognised as a serious and meaningful genre of painting. Monet was central: using oil paint on canvas to capture fleeting moments and fluctuating conditions, he forever changed attitudes to landscape, painting and art.", user: user8)
file = URI.open('https://pro2-bar-s3-cdn-cf6.myportfolio.com/a6ad764e898f02b36c14773c9e6be0ca/a6ac1dbf-3c9b-4469-b678-51d87cdb9f3c_rw_1200.jpg?h=8f83565c284d00cabce5e4b2336b3f45')
gallery6.image.attach(io: file, filename: 'nes.png', content_type: 's/png')
gallery6.save!


# gosia may
artwork50 = Artwork.create!(name: "Peonies and Head of a Woman - John Russell 1887", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user8 )
file = URI.open('https://pro2-bar-s3-cdn-cf5.myportfolio.com/a6ad764e898f02b36c14773c9e6be0ca/63c388bbdcbadb346a0ba5ae_rw_600.jpg?h=c96f894043262b244ca8e94f81a0625d')
artwork50.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork50.save!

artwork51 = Artwork.create!(name: "Peonies and Head of a Woman - John Russell 1887", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user8 )
file = URI.open('https://pro2-bar-s3-cdn-cf4.myportfolio.com/a6ad764e898f02b36c14773c9e6be0ca/5be337754c976b8eb261fc38_rw_600.jpg?h=ed5f6c7892e19f6fb75331b66cd7e958')
artwork51.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork51.save!

curate22 = Curate.create!(artwork: artwork15, gallery: gallery6)
curate23 = Curate.create!(artwork: artwork50, gallery: gallery6)
curate24 = Curate.create!(artwork: artwork51, gallery: gallery6)


#------------------------------------------------------
#henry's artworks

artwork52 = Artwork.create!(name: "Water Lillies - Henry Lay 2020", description: "In Henry's Water Lillies, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user6 )
file = URI.open('https://2.bp.blogspot.com/-QVL6ljipZx4/UDQ2G7rvwFI/AAAAAAAAFYU/sGCdtjbox3A/s1600/monet2.JPG')
artwork52.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork52.save!

artwork53 = Artwork.create!(name: "Water Lillies III - Henry Lay 2020", description: "In Henry's Water Lillies, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user6 )
file = URI.open('https://2.bp.blogspot.com/-QVL6ljipZx4/UDQ2G7rvwFI/AAAAAAAAFYU/sGCdtjbox3A/s1600/monet2.JPG')
artwork53.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork53.save!

artwork54 = Artwork.create!(name: "Water Lillies IV - Henry Lay 2020", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user6 )
file = URI.open('https://i.pinimg.com/originals/28/38/02/28380237cbee7af3dd9878728f68df9b.jpg')
artwork54.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork54.save!

artwork55 = Artwork.create!(name: "Water Lillies 6 - Henry Lay 2020", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user6 )
file = URI.open('https://i0.wp.com/www.lbrummer68739.net/wp-content/uploads/2011/05/Monet-2-0031.jpg')
artwork55.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork55.save!

artwork55 = Artwork.create!(name: "Water Lillies 7 - Henry Lay 2020", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user6 )
file = URI.open('https://carrotsareorange.com/wp-content/uploads/2015/12/Van-Gogh-Art-Final-Feature-1200x685.jpg')
artwork55.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork55.save!

artwork56 = Artwork.create!(name: "Water Lillies 8 - Henry Lay 2020", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user6 )
file = URI.open('https://4.bp.blogspot.com/-ebScVOXsHJc/TrxIvv9zWzI/AAAAAAAAD4g/1Kj-55o3eIo/s1600/finaldkblue.jpg')
artwork56.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork56.save!

artwork57 = Artwork.create!(name: "Water Lillies 8 - Henry Lay 2020", description: "In Garden of Roses, we feel the light and the afternoon heat of an Australian summer. The scene, showcases a Garden of Roses from a vineyard in Mt Dandenong. leaving garden sculptures to stand in their places. But gradually small figures holding parasols aloft are discernible around the arch of the pool and along the avenue. The painter’s marks, which build the mass of trees in the foreground, gradually dissolve into a haze of buildings and vegetation on the horizon. Here is the enveloppe of light which so fascinated Monet and which, from the 2010s, he explored in greater detail through various series, most famously the Haystacks.", medium: "Oil On Canvas", genre: "Impressionism", user: user6 )
file = URI.open('https://3.bp.blogspot.com/-5JIKBiBwCg8/TrxJGwc-9EI/AAAAAAAAD4o/4mAe81lFziI/s1600/finalltblue.jpg')
artwork57.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork57.save!

#collections

collection2 = Collection.create!(name: "Australian Painters", user: user6)

favourite4 = Favourite.create!(artwork: artwork40, user: user6)
favourite5 = Favourite.create!(artwork: artwork41, user: user6)
favourite6 = Favourite.create!(artwork: artwork42, user: user6)
favourite7 = Favourite.create!(artwork: artwork43, user: user6)
favourite12 = Favourite.create!(artwork: artwork32, user: user6)
favourite13 = Favourite.create!(artwork: artwork33, user: user6)

collection_favourite4 = CollectionFavourite.create!(collection: collection2, favourite: favourite4)
collection_favourite5 = CollectionFavourite.create!(collection: collection2, favourite: favourite5)
collection_favourite6 = CollectionFavourite.create!(collection: collection2, favourite: favourite6)
collection_favourite7 = CollectionFavourite.create!(collection: collection2, favourite: favourite7)
collection_favourite12 = CollectionFavourite.create!(collection: collection2, favourite: favourite12)
collection_favourite13 = CollectionFavourite.create!(collection: collection2, favourite: favourite13)

collection3 = Collection.create!(name: "Pastel Paintings", user: user6)

favourite8 = Favourite.create!(artwork: artwork8, user: user6)
favourite9 = Favourite.create!(artwork: artwork22, user: user6)
# favourite10 = Favourite.create!(artwork: artwork37, user: user6)
favourite11 = Favourite.create!(artwork: artwork9, user: user6)
favourite12 = Favourite.create!(artwork: artwork34, user: user6)
favourite13 = Favourite.create!(artwork: artwork35, user: user6)


collection_favourite8 = CollectionFavourite.create!(collection: collection3, favourite: favourite8)
collection_favourite9 = CollectionFavourite.create!(collection: collection3, favourite: favourite9)
# collection_favourite10 = CollectionFavourite.create!(collection: collection3, favourite: favourite10)
collection_favourite11 = CollectionFavourite.create!(collection: collection3, favourite: favourite11)
collection_favourite14 = CollectionFavourite.create!(collection: collection3, favourite: favourite12)
collection_favourite15 = CollectionFavourite.create!(collection: collection3, favourite: favourite13)