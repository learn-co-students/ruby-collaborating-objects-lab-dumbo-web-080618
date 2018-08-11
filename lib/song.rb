require 'pry'

class Song

  attr_accessor :name, :artist # points to artist instance
  @@all = [] # array of all songs

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  # def split_filename(filename)
  #   split_filename = filename.chomp(".mp3").split(" - ")
    # self.name = split_filename[1]
    # self.artist = split_filename[0]
    # split_filename
  # end

  def self.new_by_filename(filename)
    # filename = "Michael Jackson - Black or White - pop.mp3"
    song_name = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(song_artist)
    song
  end

end
