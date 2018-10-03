class Genre
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.map {|song| song.artist}
  end

end
