class Song
  attr_reader :artist, :song

  def initialize artist, song
    @artist = artist
    @song = song
  end
end

song1 = Song.new 'Queen', 'Show must go on'
puts song1.artist
puts song1.song
