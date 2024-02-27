User.destroy_all
User.create!(username: "florian", email: "florian@gmail.com", password: "111111")
User.create!(username: "romain", email: "romain@gmail.com", password: "111111")
User.create!(username: "knnll", email: "knnll@gmail.com", password: "111111")
User.create!(username: "cédric", email: "cédric@gmail.com", password: "111111")
User.create!(username: "marine", email: "marine@gmail.com", password: "111111")
User.create!(username: "perrine", email: "perrine@gmail.com", password: "111111")
User.create!(username: "mathieu", email: "mathieu@gmail.com", password: "111111")

puts "seeded #{User.count} users"

Game.destroy_all
Game.create!(name: "Poker", type: "Card Game", content: "Texas Hold'em!! Yeehaw!!", price: 5, user_id: 0)
Game.create!(name: "Poker", type: "Card Game", content: "Ma malette de poker est meilleure que Flo", price: 7, user_id: 1)
Game.create!(name: "Monopoly", type: "Board Game", content: "Destructeur de relations", price: 5, user_id: 5)
Game.create!(name: "Animal Crossing account", type: "Digital Game", content: "my world", price: 15, user_id: 3)
Game.create!(name: "Un marteau", type: "Sport Game", content: "Dans ta tronche", price: 0, user_id: 4)
Game.create!(name: "Basketball", type: "Sport Game", content: "C'est un beau ballon", price: 2, user_id: 5)
Game.create!(name: "Pokemon GBA", type: "Digital Game", content: "Gotta catch them all", price: 40, user_id: 6)

puts "seeded #{Game.count} games"
