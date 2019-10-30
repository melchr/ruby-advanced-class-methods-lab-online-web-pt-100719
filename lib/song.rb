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
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end
  
  def self.create_by_name(title)
    song = self.new
    song.name = title
    @@all << song
    song
  end
  
  def self.find_by_name(title)
    @@all.find{|n| n.name == name}
  end
  
   def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

  def self.destroy_all
    @all = []
  end

end
