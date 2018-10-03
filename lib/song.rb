class Song
  @@all = []
  attr_accessor :name, :artist, :genre

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    self.class.all << self
  end

end
