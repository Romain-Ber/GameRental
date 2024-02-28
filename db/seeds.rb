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

Game.create!(name: "Poker", game_type: "Card Game", content: "Texas Hold'em!! Yeehaw!!", price: 5, user: florian)
Game.create!(name: "Poker", game_type: "Card Game", content: "Ma malette de poker est meilleure que Flo", price: 7, user: romain)
Game.create!(name: "Monopoly", game_type: "Board Game", content: "Destructeur de relations", price: 5, user: marine)
Game.create!(name: "Animal Crossing account", game_type: "Digital Game", content: "my world", price: 15, user: knnll)
Game.create!(name: "Un marteau", game_type: "Sport Game", content: "Dans ta tronche", price: 0, user: cedric)
Game.create!(name: "Basketball", game_type: "Sport Game", content: "C'est un beau ballon", price: 2, user: perrine)
Game.create!(name: "Pokemon GBA", game_type: "Digital Game", content: "Gotta catch them all", price: 40, user: mathieu)

puts "seeded #{Game.count} games"
