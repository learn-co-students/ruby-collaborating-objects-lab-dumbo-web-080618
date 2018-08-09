
class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
    @files = []
    Dir.foreach(@path) do |filename|
      next if filename == '.' or filename == '..'
      @files << filename
    end
  end

  def import
    @files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
