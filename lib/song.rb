require 'pry'

class Song

  attr_accessor :name, :artist

    # @@all =[]



  def initialize(name)
    @name = name
    # @@all << self

  end


  # def add_song(song)
  #   @song << song
  # end



  def self.new_by_filename(file)
    # binding.pry
    new_format = file.split(" - ")
    new_song = self.new(new_format[1])
    # binding.pry

    new_song.artist = Artist.find_or_create_by_name(new_format[0])
    # new_song.songs << new_song
    # new_song.artist.songs << new_song

    new_song.artist.add_song(new_song)

    new_song

    # binding.pry
    # 0
    # new_song.name =


    end

    # def artist=(singer)
    #    @artist = Artist.find_or_create_by_name(singer)
    #    # binding.pry
    #    # artist.add_song(self)
    # end



  # def self.name
  #
  #   @@all.uniq
  #
  # end

end
