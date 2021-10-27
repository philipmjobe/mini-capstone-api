# Image.create!([
#   {url: "https://cdp.azureedge.net/products/USA/IDN/2021/MC/CRUISER/SCOUT_BOBBER_SIXTY_ABS/49/THUNDER_BLACK/2000000011.jpg", product_id: nil},
#   {url: "https://cdp.azureedge.net/products/USA/IDN/2021/MC/CRUISER/SCOUT_BOBBER_SIXTY_ABS/49/THUNDER_BLACK/2000000011.jpg", product_id: 1},
#   {url: "https://www.bellhelmets.com/dw/image/v2/BDBJ_PRD/on/demandware.static/-/Sites-bell-master-catalog/default/dw48a91d14/images/large/bell-rogue-cruiser-motorcycle-helmet-honor-matte-titanium-black-right.jpg?sw=800&sh=800&sm=fit)", product_id: 2},
#   {url: "https://www.schottnyc.com/images/source/618_BRN_FRT_NEW2.jpg)", product_id: 3},
#   {url: "https://www.revzilla.com/product_images/0125/8230/forma_adventure_boots_300x300.jpg", product_id: 4},
#   {url: "https://www.revzilla.com/product_images/0217/2147/dainese_blackjack_gloves_300x300.jpg", product_id: 5}
# ])
# Category.create!([
#   {name: "bikes"},
#   {name: "Riding gear"},
#   {name: "Safety gear"}
# ])
# Supplier.create!([
#   {name: "Indian Motorcycles", email: "i@gmail.com", phone_number: "8675309"},
#   {name: "Bell Helmets", email: "b@gmail.com", phone_number: "2223333"},
#   {name: "Schott NYC", email: "s@gmail.com", phone_number: "4453434"}
# ])
# Product.create!([
#   {name: "Motorcycle Jacket", price: "1009.0", description: "a jacket to wear while riding motorcycles", inventory: 0, supplier_id: 2},
#   {name: "Dainese Blackjack Gloves", price: "125.0", description: "Timeless Italian taste, quality leather construction and nothing more. The Dainese Blackjack Gloves give off good vibes for the stylish summer rider.", inventory: 0, supplier_id: 2},
#   {name: "Motorcycle boots", price: "985.0", description: "These keep your feet safe while riding a mototrcycle", inventory: 0, supplier_id: 3},
#   {name: "Helmet", price: "270.0", description: "A helmet for motorcycle riding", inventory: 0, supplier_id: 1},
#   {name: "Motorcycle", price: "9799.0", description: "Indian Scout Bobber", inventory: 0, supplier_id: 1}
# ])
# Order.create!([
#   {user_id: 1, product_id: 2, quantity: nil, subtotal: "540.0", tax: "48.0", total: "588.0"},
#   {user_id: 1, product_id: 2, quantity: nil, subtotal: "540.0", tax: "48.0", total: "588.0"}
# ])
# User.create!([
#   {name: "Test name", email: "test@test.com", password_digest: "$2a$12$P0b87fvjULo12Nm96jZX0uAGdMdhBd859k0iKhh6PB2rPyHtTcK6q", admin: false},
#   {name: "Phil jobe", email: "phil@example.com", password_digest: "$2a$12$QiFaSqVwYzUt380.w4VKIujsmAd7t.zD7Us5X5q5NytALSS9Vs2Yu", admin: false}
# ])
