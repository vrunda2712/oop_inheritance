class System

 @@bodies = []

 attr_reader :bodies

 def initialize
 end

 def add(new_body)
   @@bodies << new_body
 end

 def total_mass
   total_mass = 0
   @@bodies.each do |body|
      total_mass += body
   end
   total_mass
 end

end




class Body

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

end

body1 = Body.new("Callisto", 44890)
solar_system = System.new
puts solar_system.add(body1).inspect
puts




class Planet < Body

  attr_accessor :planet_day, :planet_year

  def initialize(name, mass, planet_day, planet_year)
    super(name, mass)
    @planet_day = planet_day
    @planet_year = planet_year
  end

  def day
    "#{name} rotates #{planet_day} hours in day."
  end

  def year
    "#{name} rotates #{planet_year} days in year."
  end
end

earth = Planet.new("Earth",189745621389,24,365)
puts earth.day
puts earth.year
puts earth.inspect
puts




class Star < Body

  attr_accessor :star_type

  def initialize(name, mass, star_type)
    super(name, mass)
    @star_type = star_type
  end

  def type
    "#{name} is a #{star_type} star."
  end

end

sun = Star.new("Sun", 56789416, "G-star")
puts sun.type
puts sun.inspect
puts




class Moon < Body

  attr_accessor :moon_month, :star

  def initialize(name, mass, moon_month, star)
    super(name, mass)
    @moon_month = moon_month
    @star = star
  end


  def month
    "On #{name} there are #{moon_month} days in month."
  end

  def moon_orbit
    "#{name} is orbiting #{star.name}"
  end

end

altair = Star.new("Altar", 8749856299, "star")
luna = Moon.new("Luna", 654879613, 258, earth)

puts luna.month
puts luna.moon_orbit
puts luna.inspect
