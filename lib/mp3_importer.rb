class MP3Importer
  attr_reader :path

    def initialize(path)
    @path = path
    @files =[]
  end

    def files
      @files = Dir.glob("#{path}/*.mp3").map do |file|
        file.gsub("#{path}/", "")
      end
      @files 
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
