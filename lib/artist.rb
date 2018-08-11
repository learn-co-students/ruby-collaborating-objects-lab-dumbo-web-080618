require 'pry'
class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @@all << self
  end

  def add_song(songs)
    @songs << songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    finder = @@all.find { |artist| artist.name == name}
    if finder == nil
      artist = self.new(name)
      artist.save
      artist
    else
      finder
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
