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

bouquet_rose_pale = Product.new(
  name: "Bouquet Rose Pâle",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 40,
  order: 20,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609860/Solstice/Bouquet_Rose_Pa%CC%82le_bcj2lv.jpg")
bouquet_rose_pale.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_rose_pale.save!
print "1 product / "

bouquet_violet = Product.new(
  name: "Bouquet Violet",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 45,
  order: 30,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609864/Solstice/Bouquet_Violet_ctggh2.jpg")
bouquet_violet.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_violet.save!
print "1 product / "

bouquet_jaune = Product.new(
  name: "Bouquet Jaune",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 40,
  order: 40,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609859/Solstice/Bouquet_Jaune_h0pwcl.jpg")
bouquet_jaune.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_jaune.save!
print "1 product / "

bouquet_orange = Product.new(
  name: "Bouquet Orange",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 30,
  order: 50,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609865/Solstice/Bouquet_Orange_vpjga8.jpg")
bouquet_orange.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_orange.save!
print "1 product / "

bouquet_rose_fuchsia = Product.new(
  name: "Bouquet Rose Fuchsia",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 40,
  order: 60,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609864/Solstice/Bouquet_Rose_Fuchsia_kyygki.jpg")
bouquet_rose_fuchsia.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_rose_fuchsia.save!
print "1 product / "

bouquet_colore = Product.new(
  name: "Bouquet Coloré",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 50,
  order: 70,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609860/Solstice/Bouquet_Colore%CC%81_lkuxom.jpg")
bouquet_colore.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_colore.save!
print "1 product / "

bouquet_amour = Product.new(
  name: "Bouquet Amour",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 50,
  order: 80,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609862/Solstice/Bouquet_Amour_d4hryj.jpg")
bouquet_amour.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_amour.save!
print "1 product / "

bouquet_rose_pastel = Product.new(
  name: "Bouquet Rose Pastel",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 50,
  order: 90,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609859/Solstice/Bouquet_Rose_Pastel_spbhlx.jpg")
bouquet_rose_pastel.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_rose_pastel.save!
print "1 product / "

bouquet_rouge_grenat = Product.new(
  name: "Bouquet Rouge Grenat",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison . Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction  de votre budget.",
  min_price: 50,
  order: 100,
  available: true,
  category: bouquet
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609867/Solstice/Bouquet_Rouge_Grenat_gn2ixi.jpg")
bouquet_rouge_grenat.photos.attach(io: file, filename: "image.png", content_type: "image/png")
bouquet_rouge_grenat.save!
print "1 product / "

box_paniers = Category.new(
  name: "Box & Paniers",
  order: 20,
  display: true
)

flower_box = Product.new(
  name: "Flower Box",
  description: "Flowers box composé avec des fleurs fraiches, de saison",
  min_price: 30,
  order: 10,
  available: true,
  category: box_paniers
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609865/Solstice/Flower_Box_rwxiuh.jpg")
flower_box.photos.attach(io: file, filename: "image.png", content_type: "image/png")
flower_box.save!
print "1 product / "

paniers_fleuris = Product.new(
  name: "Paniers Fleuris",
  description: "Un magnifique panier fleuris de saison réalisé par Solstice à offrir à l'occasion de la fête des grands-mères. Vous pouvez demander à votre fleuriste de le personnaliser en fonction de votre budget et de vos préférences",
  min_price: 35,
  order: 20,
  available: true,
  category: box_paniers
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609858/Solstice/Paniers_Fleuris_rwtzli.jpg")
paniers_fleuris.photos.attach(io: file, filename: "image.png", content_type: "image/png")
paniers_fleuris.save!
print "1 product / "

mega_flower_box = Product.new(
  name: "Mega Flower Box",
  description: "Flowers box composé avec des fleurs fraiches, de saison",
  min_price: 50,
  order: 30,
  available: true,
  category: box_paniers
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609867/Solstice/Mega_Flower_Box_plu0br.jpg")
mega_flower_box.photos.attach(io: file, filename: "image.png", content_type: "image/png")
mega_flower_box.save!
print "1 product / "

mega_flower_box_passion = Product.new(
  name: "Mega Flower Box Passion",
  description: "Nos Flowers Box spécial ST Valentin sont créés spécialement pour vous  ! Cette boîte a chapeau garni par de magnifiques fleurs de saison . Avec celle ci vous êtes sur de faire plaisir à la personne qui vous est chère",
  min_price: 60,
  order: 40,
  available: true,
  category: box_paniers
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609864/Solstice/Mega_Flower_Box_Passion_oap7uw.jpg")
mega_flower_box_passion.photos.attach(io: file, filename: "image.png", content_type: "image/png")
mega_flower_box_passion.save!
print "1 product / "

mega_flower_box_amour = Product.new(
  name: "Mega Flower Box Amour",
  description: "Nos Flowers Box spécial ST Valentin sont créés spécialement pour vous  ! Cette boîte a chapeau garni par de magnifiques fleurs de saison . Avec celle ci vous êtes sur de faire plaisir à la personne qui vous est chère",
  min_price: 70,
  order: 50,
  available: true,
  category: box_paniers
)
file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609862/Solstice/Mega_Flower_Box_Amour_r3n5df.jpg")
mega_flower_box_amour.photos.attach(io: file, filename: "image.png", content_type: "image/png")
mega_flower_box_amour.save!
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
