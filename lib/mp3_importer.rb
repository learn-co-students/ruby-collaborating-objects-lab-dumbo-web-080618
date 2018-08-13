class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(@path).select { |x| x.include?('.mp3')}
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
