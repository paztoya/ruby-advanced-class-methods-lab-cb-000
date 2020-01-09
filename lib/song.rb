class Song
  attr_accessor :name, :artist_name
  @@all = []

  self.class.all << self
  end

  def self.create
    song = self.new
    song.save << song
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save << song
    song
  end

end
