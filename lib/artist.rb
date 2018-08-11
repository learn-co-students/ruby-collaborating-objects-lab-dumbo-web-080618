require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all  = []
    def initialize(name)
      @name = name
      @songs = []



    end


    # def

    def self.all
      @@all
    end
    #
    def add_song(songs)
      @songs << songs
    end

    def save
    @@all << self
    end

    def print_songs
      @songs.each do |song_name|
        puts song_name.name
      end
    end

    def self.create_by_name(name)
      abc = self.new(name)
      abc.name  = name
      @@all << abc
      abc
    end

    def self.find_by_name(name)
      @@all.find {|songs| songs.name == name}
    end


    def self.find_or_create_by_name(name)
      if !(self.find_by_name(name))
          self.create_by_name(name)
        else
          self.find_by_name(name)
        end
      end
    # end




  end
