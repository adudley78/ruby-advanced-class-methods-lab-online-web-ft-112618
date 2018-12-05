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

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
    # self.name = song
    # song
    #create
    #song.name = name
    #song.name = name
  end

  def self.create_by_name(name)
    self.new_by_name(name).save
    self.all[-1]
    # song = Song.new
    # song.name = name
    # song.save
  end

  def self.find_by_name(name)
    self.all.find { |song| song.name == name }
    # if !self.all.include?(name) #if song is not already in self...
    #   self.create_by_name(name) #create a new song
    #else
    #end
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
    # if self.find_by_name(name) #== name
    # else self.create_by_name(name)
    # end
  end

  def self.alphabetical
    self.all.sort_by { |sg| sg.name }
  end

  def self.new_from_filename
    
  end

end
