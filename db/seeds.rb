# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
molly = Artist.new(name: "Molly")
molly_song = molly.songs.build(title: "Barking at the Postman")
molly_song.save

larkin_song = Song.new(title: "Clucking for Cheese")
larkin = larkin_song.build_artist(name: "Larkin")
larkin_song.save

new_larkin_song = Song.new(title: "Pecking for Feed")
larkin.songs << new_larkin_song
