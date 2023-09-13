OrderItem.destroy_all
Order.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all

User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true
)

bouquet = Category.new(
  name: "Bouquets",
  order: 10,
  display: true
)

bouquet_printemps = Product.new(
  name: "Bouquet Printemps",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison sur le thème du printemps. Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction de vos préférences et de votre budget.",
  min_price: 35,
  order: 10,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609863/Solstice/Bouquet_Printemps_apdtox.jpg")
bouquet_printemps.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_printemps.save!
print "1 product / "

# bouquets = Category.new(
#   name: "Bouquets",
#   order: 1,
#   display: true
# )

# bouquet1 = Product.new(
#   name: 'Bouquet Printemps',
#   description: 'Lorem Ipsum Bouquet Printemps',
#   min_price: 40.00,
#   available: true,
#   featured: true,
#   category: bouquets
# )
# bouquet1.save!

# bouquet2 = Product.new(
#   name: 'Bouquet Violet',
#   description: 'Lorem Ipsum Bouquet Violet',
#   min_price: 30.00,
#   available: true,
#   featured: true,
#   category: bouquets
# )
# bouquet2.save!

# bouquet3 = Product.new(
#   name: 'Bouquet Violet',
#   description: 'Lorem Ipsum Bouquet Blanc',
#   min_price: 25.00,
#   available: true,
#   featured: true,
#   category: bouquets
# )
# bouquet3.save!

# deuil = Category.new(
#   name: "Deuil",
#   description: "Deuil",
#   order: 2,
#   display: true
# )

# deuil1 = Product.new(
#   name: 'Coussin Deuil',
#   description: 'Lorem Ipsum Coussin Deuil',
#   min_price: 125.00,
#   available: true,
#   featured: true,
#   category: deuil
# )
# deuil1.save!

# deuil2 = Product.new(
#   name: 'Couronne Deuil',
#   description: 'Lorem Ipsum Couronne Deuil',
#   min_price: 115.00,
#   available: true,
#   featured: true,
#   category: deuil
# )
# deuil2.save!

# mariage = Category.new(
#   name: "Mariage",
#   description: "Mariage",
#   order: 3,
#   display: true
# )

# mariage1 = Product.new(
#   name: 'Coussin Mariage',
#   description: 'Lorem Ipsum Coussin Mariage',
#   min_price: 95.00,
#   available: true,
#   featured: true,
#   category: mariage
# )
# mariage1.save!

# mariage2 = Product.new(
#   name: 'Bouquet Mariage',
#   description: 'Lorem Ipsum Bouquet Mariage',
#   min_price: 65.00,
#   available: true,
#   featured: true,
#   category: mariage
# )
# mariage2.save!

# mariage3 = Product.new(
#   name: 'Livre Mariage',
#   description: 'Lorem Ipsum Livre Mariage',
#   min_price: 45.00,
#   available: true,
#   featured: true,
#   category: mariage
# )
# mariage3.save!

# mariage4 = Product.new(
#   name: 'Couronne Mariage',
#   description: 'Lorem Ipsum Couronne Mariage',
#   min_price: 215.00,
#   available: true,
#   featured: true,
#   category: mariage
# )
# mariage4.save!

# orchidees = Category.new(
#   name: "Orchidées",
#   description: "Orchidées",
#   order: 4,
#   display: true
# )

# orchidees1 = Product.new(
#   name: 'Orichidée blanche',
#   description: 'Lorem Ipsum Orichidée blanche',
#   min_price: 15.00,
#   available: true,
#   featured: true,
#   category: orchidees
# )
# orchidees1.save!

# orchidees2 = Product.new(
#   name: 'Orichidée rose',
#   description: 'Lorem Ipsum Orichidée rose',
#   min_price: 20.00,
#   available: true,
#   featured: true,
#   category: orchidees
# )
# orchidees2.save!
