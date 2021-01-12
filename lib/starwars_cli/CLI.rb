class StarwarsCli::CLI
  def call
   puts ""
   puts ""
   puts "Welcome, traveller!".colorize(:yellow)
   puts "To learn more about the planets in our far, far away galaxy, enter 'begin'".colorize(:yellow)
   puts "To exit the galaxy and return to your own, enter 'exit'".colorize(:yellow)
   puts ""
   API.get_data
   menu
  end

  def menu
    input = gets.strip.downcase
    if input == "begin"
      puts ""
      planet_list
    elsif input == "exit"
      puts ""
      goodbye
    else
      puts ""
      invalid_entry
    end
  end

  def second_menu
    input = gets.strip.downcase
    if input == "continue"
      puts ""
      planet_list
    elsif input == "exit"
      puts ""
      goodbye
    else
      puts ""
      invalid_entry
    end
  end

  def planet_list
    puts ""
    Planet.all.each_with_index do |planet, index|  
      puts "#{index + 1}. #{planet.name}"
    end
    puts ""
    puts ""
    puts "Which planet would you like more detail about:".colorize(:color => :black, :background => :yellow)
    puts ""
    input = gets.strip.downcase
    planet_selection(input)
  end

  def planet_selection(planet)
   p = Planet.find_by_name(planet)
   p.each do |x|
    puts ""
    puts "Name: #{x.name}".colorize(:yellow)
    puts "Climate: #{x.climate}".colorize(:yellow)
    puts "Diameter: #{x.diameter}".colorize(:yellow)
    puts "Terrain: #{x.terrain}".colorize(:yellow)
    puts "Gravity: #{x.gravity}".colorize(:yellow)
    puts ""
    puts ""
   end
   puts ""
   puts "Enter 'continue' to select another planet and 'exit' to leave program".colorize(:color => :black, :background => :yellow)
   puts ""
   second_menu
  end

  def goodbye
    puts ""
    puts "So long, Traveller! May the Force be with you.".colorize(:color => :yellow)
    puts ""
  end

  def invalid_entry
    puts ""
    puts "Invalid entry, please try again!".colorize(:color => :white, :background => :red)
    puts ""
    menu
  end
end

  