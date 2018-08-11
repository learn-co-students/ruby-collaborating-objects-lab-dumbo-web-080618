class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
    #Dir.entries gives you the file path into an array but it includes the two
    #front dots
  end


  def files
    list = Dir.entries(@path)
    @files.shift
    @files.shift

    #grab files in director and make sure they are mp3s
    @files = list.select do |file|
      file = file.split('.')
      if file[1] == 'mp3'
        file.join('.')
      end
    end
    @files
  end#end of function

  def import
    #why does files work without @ symbol here
    files.each do |file|
      Song.new_by_filename(file)
    end
  end

end #end of class
