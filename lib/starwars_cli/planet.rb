class Planet
   attr_accessor :name, :climate, :diameter, :terrain, :gravity
   @@all = []

   def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)
    end
      save
   end

   def save
    @@all << self
   end

   def self.all
    @@all 
   end

   def self.find_by_name(name)
    self.all.select do |planet|
      planet.name.downcase == name
    end
   end

end

