require 'pry'

class MP3Importer

attr_accessor :path



def initialize(path)
  @path = path
  @files = []
end

##this is the array of songs
def files
 @files = Dir.glob("#{path}/*.mp3").map do |file|
   file.gsub("#{path}/", "")
 end
 return @files
end




def import
  files.each do |filename|
    Song.new_by_filename(filename)

end

end

end
