class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files = Dir.entries(path).select.with_index {|file, i| file[i] != "." and file[i] != ".."}
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
