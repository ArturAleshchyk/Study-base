class Country
  attr_reader :country_name
  attr_reader :airportss

  def initialize country_name
    @country_name = country_name
    @airportss = []
  end

  def add_airports airport
    @airportss << airport
  end
end

class Airport
  attr_reader :name
  attr_reader :planes

  def initialize name
    @name = name
    @planes = []
  end

  def add_plane plane
    planes << plane
  end
end

class Plane
  attr_reader :model

  def initialize model
    @model = model
  end
end

#Create 2 airports
airport1 = Airport.new 'Glasgow'
airport2 = Airport.new 'Helsinki'

#Create airports array
airports = []

country1 = Country.new 'Belarus'
country1.add_airports airports

#Add airports t array
airports << airport1
airports << airport2

#Create planes
plane1 = Plane.new 'Boeeng 747'
plane2 = Plane.new 'An 21'
plane3 = Plane.new 'Iak 2'

plane_a = Plane.new 'Stels'
plane_b = Plane.new 'Cobra'
plane_c = Plane.new 'IL 2'

#Add planes to airport 1
airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

#Add planes to airport 2
airport2.add_plane plane_a
airport2.add_plane plane_b
airport2.add_plane plane_c

#Show all airports and planes in them
airports.each do |airport|
  puts "Airport name: #{airport.name}"
    airport.planes.each do |plane|
      puts "Plane: #{plane.model}"
    end
end
