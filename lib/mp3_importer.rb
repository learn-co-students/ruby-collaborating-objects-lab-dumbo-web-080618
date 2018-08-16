class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
    @files = []
  end
  def files
    @files = Dir.glob("#{path}/*.mp3").map do |file| # this is saying go into the global directory and find path/ everything(*) in mp3 and give me an array(.map) file
       file.gsub("#{path}/", "")  # global sub file where path is nothing, so return empty array
     end
     @files # return files
  end
  def import
    files.each{|song| Song.new_by_filename(song)} #song variable in rspec is creating a new song from Song class by file name  
  end

end
