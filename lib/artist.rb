require 'pry'

class Artist

attr_accessor :name, :songsarray, :song

@@all = []



def initialize(name)
  @name = name
  @songsarray = []
  @@all << self
end



def self.all
  @@all
end

#
def add_song(song)
  @songsarray << song
  return @songsarray
end

#
#
def songs
  @songsarray
# Song.all.select do |song|
#     song.artist == self
#   end

end

def print_songs
 @songsarray.each do |song|
   puts song.name
end
end


def save
  @@all << self
end

def self.find_or_create_by_name(name)
   all.find do |artist|
     if artist.name = name
      artist
     else
    new_artist = Artist.new(name)
      return new_artist
    end
end



end

end
