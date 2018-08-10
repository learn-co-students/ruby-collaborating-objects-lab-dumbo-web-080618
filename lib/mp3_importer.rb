 #initialize accepts a file path to parse mp3 files from
 require 'pry'
 class MP3Importer
   attr_accessor :path, :files

   def initialize(path)
    @path = path 
    @files = Dir.entries(@path).select.with_index{|file, index|
      index != 0 && index != 1
      }
   end
   # MP3Importer #import imports the files into the library by creating songs from a filename
   def import
    @files.each{|mp3|
      Song.new_by_filename(mp3)
    }
   end

 end

 