# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.delete_all
Artist.delete_all


song1 = Song.create(name: "Sign of The Times")
song2 = Song.create(name: "The Beautiful Ones")
song3 = Song.create(name: "Housequake")

song4 = Song.create(name: "As I sat sadly by her side")
song5 = Song.create(name: "Darker with the day")
song6 = Song.create(name: "And no more shall we part")

song7 = Song.create(name: "Faraway")
song8 = Song.create(name: "Identity Thief")
song9 = Song.create(name: "March")

prince = Artist.create(name: "Prince", img_url: "http://res.cloudinary.com/ddpouudhk/image/upload/v1477255038/princebb_uvksoi.jpg")
nick_cave_and_the_bad_seeds = Artist.create(name: "Nick Cave and the Bad Seeds", img_url: "http://res.cloudinary.com/ddpouudhk/image/upload/v1477255209/images.duckduckgo.com_n4cdwr.jpg")
joshua_redman = Artist.create(name: "Joshua Redman", img_url: "http://res.cloudinary.com/ddpouudhk/image/upload/c_scale,w_654/v1477255219/00a03ec6141943_res_h470_p2ygkz.jpg")

prince.songs << [song1]
prince.songs << [song2]
prince.songs << [song3]

nick_cave_and_the_bad_seeds.songs << [song4]
nick_cave_and_the_bad_seeds.songs << [song5]
nick_cave_and_the_bad_seeds.songs << [song6]

joshua_redman.songs << [song7]
joshua_redman.songs << [song8]
joshua_redman.songs << [song9]
