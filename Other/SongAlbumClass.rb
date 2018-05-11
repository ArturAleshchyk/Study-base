class Artist
  attr_reader :artist
  attr_reader :albums

  def initialize artist
    @artist = artist
    @albums = []
  end

  def add_albums options
    @albums << options
  end
end

class Album
  attr_reader :name
  attr_reader :songs

  def initialize name
    @name = name
    @songs = []
  end

  def add_songs options
    @songs << options
  end
end

class Song
  attr_reader :track
  attr_reader :duration

  def initialize track, duration
    @track = track
    @duration = duration
  end
end

artist1 = Artist.new 'Linkin Park'


album1 = Album.new 'Meteora'
song1 = Song.new 'Crouling', 6
song2 = Song.new 'From the inside', 3
song3 = Song.new 'Faint', 4.5

album1.add_songs song1
album1.add_songs song2
album1.add_songs song3
artist1.add_albums album1

puts artist1.inspect