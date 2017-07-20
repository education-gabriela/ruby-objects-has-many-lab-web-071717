class Song
  @@all_songs = []
  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
    @artist = artist
    @@all_songs << self
  end

  def self.all
    @@all_songs
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
