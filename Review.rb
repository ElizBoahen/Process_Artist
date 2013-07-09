require 'ruby-processing'
class FirstSketch < Processing::App

	def setup
		background(0,0,0)
		@size = 55
		@queue
		stroke_weight(1)
	end

	def draw
		#do stuff
	end

	def key_pressed
	  warn "A key was pressed! #{key.inspect}"
	  if @queue.nil?
	    @queue = ""
	  end

	  if !key.is_a?(String)
	  	warn"That wasn't a string"
	  	return
	  end

	  if key == "+"
	  	warn "You pressed plus"
	  	@size += 10
	  elsif key == "-"
	  	warn "You pressed minus"
	  	@size -= 10
	  elsif key == "*"
	  	warn "Increase stoke size"
	  	stroke_weight(5)
	  elsif key == "b"
	  	warn "Backgound change"
	  	background(rand(255), rand(255), rand(255))
	  elsif key != "\n"
	    @queue = @queue + key
	  else
	    warn "Time to run the command: #{@queue}"
	    @new_shape = @queue.chomp
	    @queue = ""
	  end
	end

	def mouse_dragged
		fill(19, 125, 255)
		stroke(225, 225, 255)


		case @new_shape
		when "s1" then oval(mouse_x, mouse_y, @size, @size)
		when "s2" then oval(mouse_x, mouse_y, 50 + @size, @size)
		when "s3" then oval(mouse_x, mouse_y, @size, 50 + @size)
		when "s4" then rect(mouse_x, mouse_y, @size, @size)
		when "s5" then rect(mouse_x, mouse_y, 50 + @size, @size)
		when "s6" then rect(mouse_x, mouse_y, @size, 50 + @size)
		when "s7" then rect(mouse_x, 50 + mouse_y, 100 + @size, @size)
			rect(50 + mouse_x, mouse_y, @size, 100 + @size)
		when "s8" then rect(20 + mouse_x, 55 + mouse_y, 20, 70)
			oval(mouse_x, 30 + mouse_y, 70, 70)
			oval(40 + mouse_x, 55 + mouse_y, 70, 70)
			oval(40 + mouse_x, mouse_y, 70, 70)
			oval(80 + mouse_x, 30 + mouse_y, 70, 70)
		when "s9" then oval(mouse_x, mouse_y, 30, 30)
			oval(20 + mouse_x, mouse_y, 50, 50)
			oval(50 + mouse_x, mouse_y, 50, 50)
		when "s11" then fill(rand(19), rand(125), rand(255))
			stroke(rand(19), rand(125), rand(255))
			rect(50 + mouse_x, mouse_y, 100 + @size, @size)
			rect(100 + mouse_x, 250 - mouse_y, @size, 100 + @size)
		end
	end
end

	#def choose_shape_from_command(command)
		#	case command
		#	when "s1" then warn "You chose s1"
		#	when "s2" then warn "You chose s2"
		#	when "s3" then warn "You chose s3"
		#	else
		#		warn "I don't know that command"
		#	end
		#end


FirstSketch.new(:width => 500, :height => 500)