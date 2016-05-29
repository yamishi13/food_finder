class Restaurant

  @@filepath = nil
  def self.filepath=(path=nil)
    @@filepath = File.join(APP_ROOT, path)
  end

  def self.file_usable?
    return false unless @@filepath
    return false unless File.exists? @@filepath
    return false unless File.readable? @@filepath
    return false unless File.writable? @@filepath
    return true
  end

  def self.create_file
    # create the restaurant file
  end

  def self.saved_restaurants
    # read the restaurant file
    # return instances of restaurant
  end

end
