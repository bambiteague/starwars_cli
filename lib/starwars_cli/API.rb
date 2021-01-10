class API

  def self.get_data
    response = RestClient.get("https://swapi.dev/api/planets/")
    planet_array = JSON.parse(response.body)["results"]
    planet_array.each do |planet|
      Planet.new(planet)
    end

  end

  

end
