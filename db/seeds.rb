# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'Apparel'
cat2 = Category.find_or_create_by! name: 'Electronics'
cat3 = Category.find_or_create_by! name: 'Furniture'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

cat1.products.create!({
  name:  'Men\'s Classy shirt',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 0,
  price: 64.99
})

cat1.products.create!({
  name:  'Women\'s Zebra pants',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel2.jpg'),
  quantity: 0,
  price: 124.99
})

cat1.products.create!({
  name:  'Hipster Hat',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel3.jpg'),
  quantity: 4,
  price: 34.49
})

cat1.products.create!({
  name:  'Hipster Socks',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel4.jpg'),
  quantity: 8,
  price: 25.00
})

cat1.products.create!({
  name:  'Russian Spy Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel5.jpg'),
  quantity: 8,
  price: 1_225.00
})

cat1.products.create!({
  name:  'Human Feet Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel6.jpg'),
  quantity: 0,
  price: 224.50
})


cat2.products.create!({
  name:  'Modern Skateboards',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics1.jpg'),
  quantity: 40,
  price: 164.49
})

cat2.products.create!({
  name:  'Hotdog Slicer',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics2.jpg'),
  quantity: 3,
  price: 26.00
})

cat2.products.create!({
  name:  'World\'s Largest Smartwatch',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics3.jpg'),
  quantity: 32,
  price: 2_026.29
})

cat3.products.create!({
  name:  'Optimal Sleeping Bed',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture1.jpg'),
  quantity: 320,
  price: 3_052.00
})

cat3.products.create!({
  name:  'Electric Chair',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture2.jpg'),
  quantity: 2,
  price: 987.65
})

cat3.products.create!({
  name:  'Red Bookshelf',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture3.jpg'),
  quantity: 23,
  price: 2_483.75
})


# REVIEWS

Review.create(:product_id => 2, :user_id => 9, :description => "hierarchy CSS Refined", :rating => 1)
Review.create(:product_id => 9, :user_id => 11, :description => "Credit Card Account transmit deposit Sleek Cotton Chips", :rating => 2)
Review.create(:product_id => 7, :user_id => 14, :description => "Awesome Metal Grocery", :rating => 5)
Review.create(:product_id => 7, :user_id => 6, :description => "Toys override", :rating => 3)
Review.create(:product_id => 9, :user_id => 8, :description => "Licensed Operative Tactics Rustic Fresh Chair uniform", :rating => 3)
Review.create(:product_id => 2, :user_id => 16, :description => "Accountability Tajikistan synthesize", :rating => 2)
Review.create(:product_id => 4, :user_id => 4, :description => "Manager wireless bypass Run", :rating => 2)
Review.create(:product_id => 1, :user_id => 1, :description => "initiatives bi-directional", :rating => 4)
Review.create(:product_id => 2, :user_id => 15, :description => "indexing Berkshire solutions Computers", :rating => 4)
Review.create(:product_id => 5, :user_id => 1, :description => "Angola Agent Pants system magenta", :rating => 5)
Review.create(:product_id => 10, :user_id => 7, :description => "driver New Hampshire Bedfordshire", :rating => 4)
Review.create(:product_id => 1, :user_id => 4, :description => "Via Oregon Wooden Uzbekistan Sum middleware", :rating => 4)
Review.create(:product_id => 12, :user_id => 16, :description => "Hat quantify deposit Handcrafted Concrete Salad", :rating => 5)
Review.create(:product_id => 7, :user_id => 4, :description => "withdrawal transition Synergized Agent object-oriented", :rating => 5)
Review.create(:product_id => 9, :user_id => 4, :description => "JBOD Dominican Republic Anguilla", :rating => 3)
Review.create(:product_id => 3, :user_id => 16, :description => "utilize Credit Card Account Handcrafted Music reboot", :rating => 3)
Review.create(:product_id => 11, :user_id => 4, :description => "Sports Liaison", :rating => 1)
Review.create(:product_id => 4, :user_id => 2, :description => "Unbranded programming Berkshire bandwidth Pizza turquoise", :rating => 2)


# USERS

User.create(:name => "Verla Huels", :email => "Fatima23@yahoo.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Gunnar Morar", :email => "Twila31@hotmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Vita Wunsch", :email => "Megane.Cartwright48@gmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Eliza Walker", :email => "Russell.Denesik@gmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Emily Cruickshank", :email => "Leola.Weber13@gmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Roy Runte", :email => "Lance18@yahoo.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Noemie Rosenbaum", :email => "Alf_Hartmann@gmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Imelda Reinger", :email => "Eusebio.Rempel@yahoo.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Amely Hagenes", :email => "Erling_Terry@yahoo.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Tierra Harber", :email => "Raymundo_Stracke3@yahoo.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Rogers Davis", :email => "Keshawn84@yahoo.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Elwyn Zemlak", :email => "Oran_Osinski14@hotmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Rhianna Cummerata", :email => "Aiyana_Steuber@hotmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Tatyana Lesch", :email => "Chaz_Walsh@hotmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Eulalia Jerde", :email => "Gianni_Stehr79@hotmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Luella Fisher", :email => "Ezra_Cruickshank57@hotmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Elbert Sanford", :email => "Adrienne_Funk35@yahoo.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Orin Predovic", :email => "Graham_Ernser@gmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Frances Glover", :email => "Wyatt_Kozey84@gmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")
User.create(:name => "Kenny Hartmann", :email => "Mabelle_Farrell51@gmail.com", :password_digest => "$2a$10$vlfv5uZWvFKTsPBX.hKJ8uLby5yPPKETZmoCvS7nR1jguH/lH5URO")

puts "DONE!"
