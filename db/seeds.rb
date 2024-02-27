User.destroy_all
User.create!(username: "florian", email: "florian@gmail.com", password: "111111")
User.create!(username: "romain", email: "romain@gmail.com", password: "111111")
User.create!(username: "knnll", email: "knnll@gmail.com", password: "111111")
User.create!(username: "cédric", email: "cédric@gmail.com", password: "111111")
User.create!(username: "marine", email: "marine@gmail.com", password: "111111")
User.create!(username: "perrine", email: "perrine@gmail.com", password: "111111")
User.create!(username: "mathieu", email: "mathieu@gmail.com", password: "111111")

puts "seeded #{User.count} users"
