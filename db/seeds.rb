# Seed data
# 1 - Users
puts "Creating user --------"
user1 = User.create(email: 'alex@hubshare.com', password: '12345678')
user2 = User.create(email: 'daniel.mathews@images.com', password: '12345678')
puts "Created User email: alex@hubshare.com with password: 12345678"
puts "Created User email: daniel.mathews@images.com with password: 12345678"
puts "-----------------------------"

# 2 - Albums
album1 = Album.create(title: "Flowers", user: user1)
album2 = Album.create(title: "Animals", user: user2)

# 3 - Images
puts "Creating Images -------------"
photo1 = album1.photos.create(tagline: 'Flower 1', user: user1)
photo1.image.attach(io: File.open("#{Rails.root}/public/flower-photos/01.jpg"), filename: "01.jpg")
photo2 = album1.photos.create(tagline: 'Flower 2', user: user1)
photo2.image.attach(io: File.open("#{Rails.root}/public/flower-photos/02.jpg"), filename: "02.jpg")
photo3 = album1.photos.create(tagline: 'Flower 3', user: user1)
photo3.image.attach(io: File.open("#{Rails.root}/public/flower-photos/03.jpg"), filename: "03.jpg")
photo4 = album1.photos.create(tagline: 'Flower 4', user: user1)
photo4.image.attach(io: File.open("#{Rails.root}/public/flower-photos/04.jpg"), filename: "04.jpg")
photo5 = album1.photos.create(tagline: 'Flower 5', user: user1)
photo5.image.attach(io: File.open("#{Rails.root}/public/flower-photos/05.jpg"), filename: "05.jpg")

photo1 = album2.photos.create(tagline: 'Animal 1', user: user1)
photo1.image.attach(io: File.open("#{Rails.root}/public/animal-photos/01.jpg"), filename: "01.jpg")
photo2 = album2.photos.create(tagline: 'Animal 2', user: user1)
photo2.image.attach(io: File.open("#{Rails.root}/public/animal-photos/02.jpg"), filename: "02.jpg")
photo3 = album2.photos.create(tagline: 'Animal 3', user: user1)
photo3.image.attach(io: File.open("#{Rails.root}/public/animal-photos/03.jpg"), filename: "03.jpg")
photo4 = album2.photos.create(tagline: 'Animal 4', user: user1)
photo4.image.attach(io: File.open("#{Rails.root}/public/animal-photos/04.jpg"), filename: "04.jpg")
photo5 = album2.photos.create(tagline: 'Animal 5', user: user1)
photo5.image.attach(io: File.open("#{Rails.root}/public/animal-photos/05.jpg"), filename: "05.jpg")

photo1 = album1.photos.create(tagline: 'Flower 1', user: user2)
photo1.image.attach(io: File.open("#{Rails.root}/public/flower-photos/01.jpg"), filename: "01.jpg")
photo2 = album1.photos.create(tagline: 'Flower 2', user: user2)
photo2.image.attach(io: File.open("#{Rails.root}/public/flower-photos/02.jpg"), filename: "02.jpg")
photo3 = album1.photos.create(tagline: 'Flower 3', user: user2)
photo3.image.attach(io: File.open("#{Rails.root}/public/flower-photos/03.jpg"), filename: "03.jpg")
photo4 = album1.photos.create(tagline: 'Flower 4', user: user2)
photo4.image.attach(io: File.open("#{Rails.root}/public/flower-photos/04.jpg"), filename: "04.jpg")
photo5 = album1.photos.create(tagline: 'Flower 5', user: user2)
photo5.image.attach(io: File.open("#{Rails.root}/public/flower-photos/05.jpg"), filename: "05.jpg")

photo1 = album2.photos.create(tagline: 'Animal 1', user: user2)
photo1.image.attach(io: File.open("#{Rails.root}/public/animal-photos/01.jpg"), filename: "01.jpg")
photo2 = album2.photos.create(tagline: 'Animal 2', user: user2)
photo2.image.attach(io: File.open("#{Rails.root}/public/animal-photos/02.jpg"), filename: "02.jpg")
photo3 = album2.photos.create(tagline: 'Animal 3', user: user2)
photo3.image.attach(io: File.open("#{Rails.root}/public/animal-photos/03.jpg"), filename: "03.jpg")
photo4 = album2.photos.create(tagline: 'Animal 4', user: user2)
photo4.image.attach(io: File.open("#{Rails.root}/public/animal-photos/04.jpg"), filename: "04.jpg")
photo5 = album2.photos.create(tagline: 'Animal 5', user: user2)
photo5.image.attach(io: File.open("#{Rails.root}/public/animal-photos/05.jpg"), filename: "05.jpg")
puts "Created Images -------------"