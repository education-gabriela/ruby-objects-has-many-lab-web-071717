class Artist
  @@song_count = 0

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    increment_song_count
    song.artist = self
  end

  def add_song_by_name(name)
    increment_song_count
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.song_count
    @@song_count
  end

  private

  def increment_song_count
    @@song_count += 1
  end
end
