
describe 'Planet' do

  before(:example) {
    Planet.class_variable_set(:@@all, [])
  }


  describe '#initialize with #name' do
    it 'accepts a name for the planet' do
      planet = Planet.new('Hoth')
      expect(planet.name).to eq('Hoth')
    end
  end

  describe '#name=' do
    it 'sets the planet name' do
      planet = planet.new('Hoth')
      planet.name = 'Hoth'
      expect(planet.name).to eq('Hoth')
    end
  end

  describe '#initialize with #climate' do
    it 'accepts a climate for the planet' do
      planet = Planet.new('Frigid')
      expect(planet.climate).to eq('Frigid')
    end
  end

  describe '#climate=' do
    it 'sets the planet climate' do
      planet = planet.new('Hoth')
      planet.climate = 'Frigid'
      expect(planet.climate).to eq('Frigid')
    end
  end

  describe '#initialize with #diameter' do
    it 'accepts a diameter for the planet' do
      planet = Planet.new('Hoth')
      expect(planet.diameter).to eq('7,200 km')
    end
  end

  describe '#diameter=' do
    it 'sets the planet diameter' do
      planet = planet.new('Hoth')
      planet.diameter = '7,200 km'
      expect(planet.diameter).to eq('7,200 km')
    end
  end

  describe '#initialize with #terrain' do
    it 'accepts a terrain for the planet' do
      planet = Planet.new('Hoth')
      expect(planet.terrain).to eq('snow, ice')
    end
  end

  describe '#terrain=' do
    it 'sets the planet terrain' do
      planet = planet.new('Hoth')
      planet.terrain = 'snow, ice'
      expect(planet.terrain).to eq('snow, ice')
    end
  end

  describe '#initialize with #gravity' do
    it 'accepts a gravity for the planet' do
      planet = Planet.new('Hoth')
      expect(planet.gravity).to eq('.85')
    end
  end

  describe '#gravity=' do
    it 'sets the planet gravity' do
      planet = planet.new('Hoth')
      planet.gravity = '.85'
      expect(planet.gravity).to eq('.85')
    end
  end

  describe '.all' do
    it 'returns all existing planet instances' do
      planet_1 = Planet.new('Hoth')
      expect(Planet.all).to eq([planet])
      planet_2 = Planet.new('Endor')
      expect(Planet.all).to eq([planet_1, planet_2])
    end
  end

  describe '.find__by_name' do
    it 'always returns an Planet instance' do
      planet_1 = Planet.find_by_name("Hoth")
      planet_2 = Planet.find_by_name("Endor")
      expect(planet_1).to be_an(planet)
      expect(planet_2).to be_an(planet)
    end

    it 'finds an planet by name maintaining uniqueness of objects by name property' do
      planet_1 = Planet.find_by_name("Hoth")
      planet_2 = Planet.find_by_name("Endor")
      expect(planet_1).to eq(planet_2)
    end
  end

end
