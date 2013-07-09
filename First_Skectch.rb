require 'ruby-processing'
class FirstSketch < Processing::App

	def setup
		background(0,0,0)
	end

	def draw
		stroke(19,217,247)
		if @i.nil? || @i == 200
			@i = 0
		@i = @i + 2
		end
		fill(@i, 2*@i, 247)
		@i.times do |j|
			fill(rand(19), rand(126), 247)
			rect(@i * 5, 10, @i, 10)
		end
	end
end

FirstSketch.new(:width => 400, :height => 400
	:title => "FirstSketch", :full_screen => false)