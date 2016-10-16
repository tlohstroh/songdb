# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.delete_all
Artist.delete_all

song1 = Song.create(song_name: "Sign of The Times")
song2 = Song.create(song_name: "The Beautiful Ones")
song3 = Song.create(song_name: "Housequake")

song4 = Song.create(song_name: "As I sat sadly by her side")
song5 = Song.create(song_name: "Darker with the day")
song6 = Song.create(song_name: "And no more shall we part")

song7 = Song.create(song_name: "Faraway")
song8 = Song.create(song_name: "Identity Thief")
song9 = Song.create(song_name: "March")

prince = Artist.create(artist_name: "Prince")
nick_cave_and_the_bad_seeds = Artist.create(artist_name: "Nick Cave and the Bad Seeds")
joshua_redman = Artist.create(artist_name: "Joshua Redman")

prince.songs << [song1]
prince.songs << [song2]
prince.songs << [song3]

nick_cave_and_the_bad_seeds.songs << [song4]
nick_cave_and_the_bad_seeds.songs << [song5]
nick_cave_and_the_bad_seeds.songs << [song6]

joshua_redman.songs << [song7]
joshua_redman.songs << [song8]
joshua_redman.songs << [song9]