Booking.destroy_all
Game.destroy_all
User.destroy_all

florian = User.create!(username: "florian", email: "florian@gmail.com", password: "111111", address: "La Piste, Rennes")
romain = User.create!(username: "romain", email: "romain@gmail.com", password: "111111", address: "La Piste, Rennes")
knnll = User.create!(username: "knnll", email: "knnll@gmail.com", password: "111111", address: "La french tech, Rennes")
cedric = User.create!(username: "cédric", email: "cédric@gmail.com", password: "111111", address: "La french tech, Rennes")
marine = User.create!(username: "marine", email: "marine@gmail.com", password: "111111", address: "Chateaubourg")
perrine = User.create!(username: "perrine", email: "perrine@gmail.com", password: "111111", address: "La Piste, Rennes")
mathieu = User.create!(username: "mathieu", email: "mathieu@gmail.com", password: "111111", address: "La french tech, Rennes")

puts "seeded #{User.count} users"

file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220980/amyc22gnupqezyn9cx69.jpg')
florianGame = Game.create!(name: "Poker", game_type: "Card Game", content: "Texas Hold'em!! Yeehaw!!", price: 5, user: florian)
florianGame.photos.attach(io: file, filename: 'poker.jpg', content_type: 'image/jpg')
florianGame.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220980/amyc22gnupqezyn9cx69.jpg')
florianGame2 = Game.create!(name: "Poker2", game_type: "Card Game", content: "bis", price: 6, user: florian)
florianGame2.photos.attach(io: file, filename: 'poker2.jpg', content_type: 'image/jpg')
florianGame2.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220539/yanov2nftnknn1lvqso5.jpg')
romainGame = Game.create!(name: "Poker", game_type: "Card Game", content: "Ma malette de poker est meilleure que Flo", price: 7, user: romain)
romainGame.photos.attach(io: file, filename: 'poker3.jpg', content_type: 'image/jpg')
romainGame.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220539/yanov2nftnknn1lvqso5.jpg')
romainGame2 = Game.create!(name: "Poker2", game_type: "Card Game", content: "bis", price: 8, user: romain)
romainGame2.photos.attach(io: file, filename: 'poker4.jpg', content_type: 'image/jpg')
romainGame2.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220539/oc5ik8jh6kc4e2cnn59p.jpg')
knnllGame = Game.create!(name: "Animal Crossing account", game_type: "Digital Game", content: "my world", price: 15, user: knnll)
knnllGame.photos.attach(io: file, filename: 'animal_crossing.jpg', content_type: 'image/jpg')
knnllGame.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220539/oc5ik8jh6kc4e2cnn59p.jpg')
knnllGame2 = Game.create!(name: "Animal Crossing account2", game_type: "Digital Game", content: "j'aime les animaux", price: 16, user: florian)
knnllGame2.photos.attach(io: file, filename: 'animal_crossing.jpg', content_type: 'image/jpg')
knnllGame2.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220821/koi4xxz4bufhckkdywyy.jpg')
cedricGame = Game.create!(name: "Un marteau", game_type: "Sport Game", content: "Dans ta tronche", price: 0, user: cedric)
cedricGame.photos.attach(io: file, filename: 'marteau.jpg', content_type: 'image/jpg')
cedricGame.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220821/koi4xxz4bufhckkdywyy.jpg')
cedricGame2 = Game.create!(name: "Un marteau2", game_type: "Sport Game", content: "2Dans ta tronche", price: 0.1, user: cedric)
cedricGame2.photos.attach(io: file, filename: 'marteau.jpg', content_type: 'image/jpg')
cedricGame2.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220905/ukotatd4p9a5s6knrn6e.jpg')
marineGame = Game.create!(name: "Monopoly", game_type: "Board Game", content: "Destructeur de relations", price: 5, user: marine)
marineGame.photos.attach(io: file, filename: 'monopoly.jpg', content_type: 'image/jpg')
marineGame.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220905/ukotatd4p9a5s6knrn6e.jpg')
marineGame2 = Game.create!(name: "Monopoly2", game_type: "Board Game", content: "Destructeur de relations", price: 6, user: romain)
marineGame2.photos.attach(io: file, filename: 'monopoly.jpg', content_type: 'image/jpg')
marineGame2.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220774/byr6rbg43e9s2fcssx8k.jpg')
perrineGame = Game.create!(name: "Basketball", game_type: "Sport Game", content: "C'est un beau ballon", price: 2, user: perrine)
perrineGame.photos.attach(io: file, filename: 'basketball.jpg', content_type: 'image/jpg')
perrineGame.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220774/byr6rbg43e9s2fcssx8k.jpg')
perrineGame2 = Game.create!(name: "Basketball2", game_type: "Sport Game", content: "2C'est un beau ballon", price: 3, user: perrine)
perrineGame2.photos.attach(io: file, filename: 'basketball.jpg', content_type: 'image/jpg')
perrineGame2.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220945/kqwm1760bo1tr5clfirp.jpg')
mathieuGame = Game.create!(name: "Pokemon GBA", game_type: "Digital Game", content: "Gotta catch them all", price: 40, user: mathieu)
mathieuGame.photos.attach(io: file, filename: 'pokemon.jpg', content_type: 'image/jpg')
mathieuGame.save!
file = URI.open('https://res.cloudinary.com/deetrshgq/image/upload/v1709220945/kqwm1760bo1tr5clfirp.jpg')
mathieuGame2 = Game.create!(name: "Pokemon GBA2", game_type: "Digital Game", content: "2Gotta catch them all", price: 41, user: mathieu)
mathieuGame2.photos.attach(io: file, filename: 'pokemon.jpg', content_type: 'image/jpg')
mathieuGame2.save!

puts "seeded #{Game.count} games"

Booking.create!(game: florianGame, user: romain, message: "kikoo", status: "ongoing")
Booking.create!(game: romainGame, user: knnll, message: "salut ca minteresse", status: "ongoing")
Booking.create!(game: cedricGame2, user: perrine, message: "kikoo", status: "pending")
Booking.create!(game: knnllGame, user: cedric, message: "kikoo", status: "ongoing")
Booking.create!(game: mathieuGame, user: florian, message: "kikoo", status: "ongoing")
Booking.create!(game: perrineGame, user: mathieu, message: "kikoo", status: "ongoing")
Booking.create!(game: knnllGame2, user: marine, message: "kikoo", status: "pending")
Booking.create!(game: cedricGame, user: marine, message: "kikoo", status: "ongoing")
Booking.create!(game: romainGame2, user: cedric, message: "kikoo", status: "pending")
Booking.create!(game: marineGame, user: perrine, message: "kikoo", status: "ongoing")
Booking.create!(game: florianGame2, user: perrine, message: "kikoo", status: "pending")
Booking.create!(game: marineGame2, user: mathieu, message: "kikoo", status: "pending")
Booking.create!(game: perrineGame2, user: knnll, message: "ton ballon me plait", status: "pending")
Booking.create!(game: mathieuGame2, user: romain, message: "kikoo", status: "pending")

puts "seeded #{Booking.count} bookings"
