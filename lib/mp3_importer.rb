require 'pry'

class MP3Importer

  attr_accessor :path, :files

  @@all = []

  def initialize(path)
    @path = path
    @files = Dir.entries(path)
    @files = @files[2..-1]
    # binding.pry
    @@all << self
  end


  def self.all
    @@all
  end

  def import
    @files.each do |song_file|
      Song.new_by_filename(song_file)
    end
  end

  # def files
  # end

end
