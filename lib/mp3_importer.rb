require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(file_name)
    @path = file_name
    @files = Dir.entries(file_name)
    @files = @files[2..-1]
    # binding.pry
  end

  def import
    @files.each do |song_file|
    Song.new_by_filename(song_file)
    end
  end

end
