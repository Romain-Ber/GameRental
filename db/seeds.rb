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

florianGame = Game.create!(name: "Poker", game_type: "Card Game", content: "Texas Hold'em!! Yeehaw!!", price: 5, user: florian)
florianGame2 = Game.create!(name: "Poker2", game_type: "Card Game", content: "bis", price: 6, user: florian)
romainGame = Game.create!(name: "Poker", game_type: "Card Game", content: "Ma malette de poker est meilleure que Flo", price: 7, user: romain)
romainGame2 = Game.create!(name: "Poker2", game_type: "Card Game", content: "bis", price: 8, user: romain)
knnllGame = Game.create!(name: "Animal Crossing account", game_type: "Digital Game", content: "my world", price: 15, user: knnll)
knnllGame2 = Game.create!(name: "Animal Crossing account2", game_type: "Digital Game", content: "my world2", price: 16, user: knnll)
cedricGame = Game.create!(name: "Un marteau", game_type: "Sport Game", content: "Dans ta tronche", price: 0, user: cedric)
cedricGame2 = Game.create!(name: "Un marteau2", game_type: "Sport Game", content: "2Dans ta tronche", price: 0.1, user: cedric)
marineGame = Game.create!(name: "Monopoly", game_type: "Board Game", content: "Destructeur de relations", price: 5, user: marine)
marineGame2 = Game.create!(name: "Monopoly2", game_type: "Board Game", content: "2Destructeur de relations", price: 6, user: marine)
perrineGame = Game.create!(name: "Basketball", game_type: "Sport Game", content: "C'est un beau ballon", price: 2, user: perrine)
perrineGame2 = Game.create!(name: "Basketball2", game_type: "Sport Game", content: "2C'est un beau ballon", price: 3, user: perrine)
mathieuGame = Game.create!(name: "Pokemon GBA", game_type: "Digital Game", content: "Gotta catch them all", price: 40, user: mathieu)
mathieuGame2 = Game.create!(name: "Pokemon GBA2", game_type: "Digital Game", content: "2Gotta catch them all", price: 41, user: mathieu)

puts "seeded #{Game.count} games"

Booking.create!(game: florianGame, user: romain, message: "kikoo", status: "pending")
Booking.create!(game: florianGame2, user: knnll, message: "kikoo", status: "pending")
Booking.create!(game: romainGame, user: knnll, message: "kikoo", status: "pending")
Booking.create!(game: romainGame2, user: cedric, message: "kikoo", status: "pending")
Booking.create!(game: knnllGame, user: cedric, message: "kikoo", status: "pending")
Booking.create!(game: knnllGame2, user: marine, message: "kikoo", status: "pending")
Booking.create!(game: cedricGame, user: marine, message: "kikoo", status: "pending")
Booking.create!(game: cedricGame2, user: perrine, message: "kikoo", status: "pending")
Booking.create!(game: marineGame, user: perrine, message: "kikoo", status: "pending")
Booking.create!(game: marineGame2, user: mathieu, message: "kikoo", status: "pending")
Booking.create!(game: perrineGame, user: mathieu, message: "kikoo", status: "pending")
Booking.create!(game: perrineGame2, user: florian, message: "kikoo", status: "pending")
Booking.create!(game: mathieuGame, user: florian, message: "kikoo", status: "pending")
Booking.create!(game: mathieuGame2, user: romain, message: "kikoo", status: "pending")

puts "seeded #{Booking.count} bookings"
