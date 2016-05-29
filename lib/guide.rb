require 'restaurant'

class Guide
  def initialize(path = nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path
    if Restaurant.file_exists?
      puts "Found restaurant file."
    # or create a new file
    elsif Restaurant.create_file
      puts "Created restaurant file."
    else
      puts "Exiting. \n\n"
      exit!
    end
    # exit if create fails
  end

  def launch!
    introduction
    # introduction
    # action loop
    #   what do you want to do? (list, find, add, quit)
    #   do that action
    # repeat until user quits
    # conclusion
    conclusion
  end

  def introduction
    puts "\n\n<<< Welcome to the food finder >>>\n\n"
    puts "This is an interactive guide to help you find the food you crave.\n\n"
  end

  def conclusion
    puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
  end

end
