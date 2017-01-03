class Bird
	include Flight
end

class Plane
	Include Flight
end

module Flight
	def take_off(altitude)
		puts "taking off and ascending until reaching #{altitude}..."
	end
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
