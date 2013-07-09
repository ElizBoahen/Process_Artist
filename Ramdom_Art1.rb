require 'ruby-processing'
class FirstSketch < Processing::App

	def setup
		background(0,0,0)
	end

	def draw
	if @i.nil? || @i == 200
			@i = 0
		@i = rand(555)
		end

		fill(10, 10, 255)
		rect(300, 300, 300, 300)
		
		fill(19, 218, 247)
		rect(0, 0, 300, 300)
		
		fill(rand(225), rand(218),247)
		triangle(300,300,300,0,0,300)

		fill(rand(225), rand(218),247)
		triangle(300,300,300,0,600,300)

		fill(rand(225), rand(218),247)
		triangle(300,300,300,600,0,300)

		fill(rand(225), rand(218),247)
		triangle(300,300,300,600,600,300)
  end
end

FirstSketch.new(:width => 600, :height => 600)