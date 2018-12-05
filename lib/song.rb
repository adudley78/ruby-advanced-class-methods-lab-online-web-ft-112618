class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new #instantiates a new instance of the Song class
    song.save #saves the song instance to the @@all class variable by way of the save method
    song #returns the new song as it now exists in the array assigned to @@all
    #@@all << song
  end

  def self.new_by_name
    create
    #song.name = name
    # song = self.new
    # song.name = name
    #song.name = name
  end

end
