class StarwarsCli::CLI
  def call
   puts "Welcome, traveller!"
   puts "To learn more about the planets in our far, far away galaxy, enter 'begin'"
   puts "To exit the galaxy and return to your own, enter 'exit'"
   puts ""
   API.get_data
   menu
  end

  def menu
    input = gets.strip.downcase
    if input == "begin"
      planet_list
    elsif input == "exit"
      goodbye
    else
      invalid_entry
    end
  end

  def second_menu
    input = gets.strip.downcase
    if input == "continue"
      planet_list
    elsif input == "exit"
      goodbye
    else
      invalid_entry
    end
  end

  def planet_list
    Planet.all.each_with_index do |planet, index|  #only getting 10 of 60 output
      puts "#{index + 1}. #{planet.name}"
    end
    puts ""
    puts ""
    puts "Which planet would you like more detail about:"
    input = gets.strip.downcase
    planet_selection(input)
  end

  def planet_selection(planet)
   p = Planet.find_by_name(planet)
   p.each do |x|
    puts "Name: #{x.name}"
    puts "Climate: #{x.climate}"
    puts "Diameter: #{x.diameter}"
    puts "Terrain: #{x.terrain}"
    puts "Gravity: #{x.gravity}"
   end
   puts ""
   puts "Enter 'continue' to select another planet and 'exit' to leave program"
   second_menu
  end

  def goodbye
    puts "So long, Traveller! May the Force be with you."
  end

  def invalid_entry
    puts "Invalid entry, please try again!"
    menu
  end
end


  # **BONUS**
  # impliment a method to bring user back and allow them to run through again in Wookie Language
  