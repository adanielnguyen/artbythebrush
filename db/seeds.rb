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

curate1 = Curate.create!(artwork: artwork26, gallery: gallery1)
curate2 = Curate.create!(artwork: artwork27, gallery: gallery1)
curate3 = Curate.create!(artwork: artwork28, gallery: gallery1)

collection1 = Collection.create!(name: "Favourite Impressionism Paintings")

favourite1 = Favourite.create!(artwork: artwork26, user: user1)
favourite2 = Favourite.create!(artwork: artwork26, user: user1)
favourite3 = Favourite.create!(artwork: artwork26, user: user1)


collection_favourite1 = Collection_Favourites.create!(collection: collection1, favourite: favourite1)

# oil = Tag.create!(text: "oil")
# pastel = Tag.create!(text: "pastel")
# hands = Tag.create!(text: "hands")
# black = Tag.create!(text: "black")

# FollowedRelationship.create!(record: oil, user: user1)
# FollowedRelationship.create!(record: user2, user: user1)
# FollowedRelationship.create!(record: user3, user: user1)
# FollowedRelationship.create!(record: black, user: user1)

puts "creating artworks"
artwork1 = Artwork.create!(name: "Water Lilies 1906 - Claude Monet", description: "One instant, one aspect of nature contains it all, said Claude Monet, referring to his late masterpieces, the water landscapes that he produced at his home in Giverny between 1897 and his death in 1926. These works replaced the varied contemporary subjects he had painted from the 1870s through the 1890s with a single, timeless motif—water lilies. The focal point of these paintings was the artist’s beloved flower garden, which featured a water garden and a smaller pond spanned by a Japanese footbridge.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting", date_created: "2007/11/10" )
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
  Portrait of Madeleine Bernard, 1888 This work was painted in 1888 during Gauguin's second visit to Pont-Aven, where he met up again with Emile Bernard and his young sister Madeleine, aged 17; Gauguin duly fell in love with her.", genre: "Impressionism Painting", user: user1, medium: "Oil Painting" )
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

artwork12 = Artwork.create!(name: "Cliffs at Pourville (1882) by Claude Monet", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pdmonet-a21450.jpg?bg=transparent&con=3&cs=srgb&dpr=1&fm=jpg&ixlib=php-3.1.0&q=80&usm=15&vib=3&w=1300&s=a8c6a4b6061ac49fc999dcfb8a8b1609')
artwork12.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork12.save!

artwork13 = Artwork.create!(name: "Summer Farm by Daniel Keys", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/51b4c595e4b087d92d55a28e/1566279415892-3BVQIQ4EA8AXB2WUO5JJ/ke17ZwdGBToddI8pDm48kFZ_TiMCkH0iAeVMJaqkULV7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0hHMyhIh2kKzuOL3ydJCryAEoNQwr2VM5LgGEhKvLDjdIpZeiUMl_tpck7juxv3Nlw/IMG_0232.jpg?format=2500w')
artwork13.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork13.save!

artwork14 = Artwork.create!(name: "Summer Farm by Daniel Keys", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/51b4c595e4b087d92d55a28e/1566691464247-9RR9I7YV3CM1Y2AK9FLK/ke17ZwdGBToddI8pDm48kPZywt-8BENWjLhsMNQxPyx7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iXS6XmVv7bUJ418E8Yoc1hq-tFSunKypXGy8Xht54XEUtdxEzBS9wkMa88Vfcz7kQ/IMG_0282-2.jpg?format=2500w')
artwork14.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork14.save!

artwork15 = Artwork.create!(name: "Summer Farm by Daniel Keys", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/51b4c595e4b087d92d55a28e/1566691464247-9RR9I7YV3CM1Y2AK9FLK/ke17ZwdGBToddI8pDm48kPZywt-8BENWjLhsMNQxPyx7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iXS6XmVv7bUJ418E8Yoc1hq-tFSunKypXGy8Xht54XEUtdxEzBS9wkMa88Vfcz7kQ/IMG_0282-2.jpg?format=2500w')
artwork15.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork15.save!

artwork16 = Artwork.create!(name: "Wythfield by Daniel Nguyen", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/a6afc823958009102b4759c28bce8f5c/531adec464521959-ab/s1280x1920/207d7aa5c3f2827742dee99ae05bda7865c0e377.png')
artwork16.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork16.save!


artwork17 = Artwork.create!(name: "Wythfield by Daniel Nguyen", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/aeb8418651822754b7b99135d70c6e5b/531adec464521959-93/s540x810/f202043be438ac3df03fd6d797fff867315a839c.jpg')
artwork17.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork17.save!

artwork18 = Artwork.create!(name: "Wythfield by Daniel Nguyen", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/88afbd2ed21e5bc1e00e55d92ddd9a52/5e30c2f6605cfc4d-b2/s640x960/1e9319dcd95b4d629910ce02cde8bb7ab11de2bb.jpg')
artwork18.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork18.save!

artwork19 = Artwork.create!(name: "Wythfield by Daniel Nguyen", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/5920915a06625ba93c8aac7d761a6e6d/ce590c3977be00b8-fa/s2048x3072/86a7a0e4aa0e854bfbacf07bb4f11fe813460131.jpg')
artwork19.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork19.save!

artwork20 = Artwork.create!(name: "Wythfield by Daniel Nguyen", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://66.media.tumblr.com/5be4958d2f3c8e75ad2d66bf9dde5d20/188bcc8401669f10-a4/s1280x1920/1e16818f6ceb9d802c2a7d70fa88131f95e81047.jpg')
artwork20.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork20.save!

artwork21 = Artwork.create!(name: "Wythfield by Daniel Nguyen", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532792989754-RDFEAMAP1R0J8X8J5A1B/ke17ZwdGBToddI8pDm48kJeMm9KtJH4741FW3oskMpB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Uc9PmzPJRFa4g8CwUK9Q2KnrcpwiJHXv6SblNo84BXOuZ5819XDE-T-fE_EmFUjQwQ/LP_WHITESANDS_SUNSET.JPG?format=1500w')
artwork21.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork21.save!

artwork22 = Artwork.create!(name: "Wythfield by Daniel Nguyen", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532793052662-WLKLKQGQE8TL701IN75B/ke17ZwdGBToddI8pDm48kNiEM88mrzHRsd1mQ3bxVct7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0s0XaMNjCqAzRibjnE_wBlkZ2axuMlPfqFLWy-3Tjp4nKScCHg1XF4aLsQJlo6oYbA/Laura_Pritchett_Patience.jpg?format=1500w')
artwork22.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork22.save!

artwork24 = Artwork.create!(name: "Wythfield by Daniel Nguyen", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532793366578-H4NWRSS9KFGR3HJQMFQI/ke17ZwdGBToddI8pDm48kGbRiyPki_EyHcjPCyx12CV7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwD1g8DYbkhCsgrhnj8CXbhR6VpMuMO3VUBAu8HErKUakpOm9R9l-sGhmSz5oguFw/laurapritchett_Above_1.jpg?format=1500w')
artwork24.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork24.save!

artwork25 = Artwork.create!(name: "Laura Pritchett", description: "Almond Blossoms is from a group of several paintings made in 1888 and 1890 by Vincent van Gogh in Arles and Saint-Rémy, southern France of blossoming almond trees. Flowering trees were special to van Gogh. They represented awakening and hope. He enjoyed them aesthetically and found joy in painting flowering trees.", genre: "Impressionism Painting", user: user2, medium: "Oil Painting" )
file = URI.open('https://images.squarespace-cdn.com/content/v1/5121095de4b0b5151b71c80b/1532793428465-ISJLPZELR04EQCN4MX62/ke17ZwdGBToddI8pDm48kAms-YFqCEzVWtxEmk_n6yJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0s2R59z2HWVKMNU9GXmUK4W9GsA4lsq1MYoWLKFqhfw8zBms60U-eXAfClfwABDCBA/laurapritchett_thequiet_4.jpg?format=1500w')
artwork25.images.attach(io: file, filename: 'nes.png', content_type: 'image/png')
artwork25.save!