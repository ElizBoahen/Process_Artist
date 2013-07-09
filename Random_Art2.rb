require 'ruby-processing'
class FirstSketch < Processing::App

	def setup
		background(0,0,0)
	end

	def draw
		if @i.nil? || @i == 200
				@i = 0
			@i = rand(10)
		end
	end

	def mouse_clicked
		@r ||= 0
		@r += 10
		fill(@r, 10, 255)
		rect(mouse_x, mouse_y, 50, 50)
	end

	def mouse_dragged
		@r ||= 0
		@r += 10
		fill(@r, 10, 255)
		rect(mouse_x, mouse_y, 50, 50)
	end

	def mouse_released
		@r = 0
	end
end

FirstSketch.new(:width => 1360, :height => 690)