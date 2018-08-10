require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song_name)
    @songs << song_name
  end

  def self.find_or_create_by_name(art_name)
    if (all.any?{|artist| artist.name == art_name}) == true
      all.each{|art| return art if art.name == art_name}
    else
      new = Artist.new(art_name)
      new
    end
  end

  def print_songs
    songs.each {|song| puts song.name}
  end



end
