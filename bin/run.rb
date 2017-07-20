require "pry"
require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"

artist = Artist.new("Adele")
artist.add_song("Rolling into deep")

binding.pry
