class MP3Importer

  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    #a ||= b is a || b = a
    @file ||= Dir.glob("#{path}/*.mp3").collect do |f|
      f.gsub("#{path}/", "") #gsub subsited all occurrences of a pattern
      # for example "hello".gsub(/[aeiou]/, '*') #=> "h*ll*"
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
