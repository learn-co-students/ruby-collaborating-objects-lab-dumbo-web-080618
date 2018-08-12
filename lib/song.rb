class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    # @artist = []
    @@all << self
  end

  def self.all
    @@all
  end

  # def artist
  # end

  def self.new_by_filename(file_name)
    new_format = file_name.split(" - ")
    new_song = self.new(new_format[1])
    new_song.artist = Artist.find_or_create_by_name(new_format[0])
    new_song.artist.add_song(new_song)
    new_song
  end

end
