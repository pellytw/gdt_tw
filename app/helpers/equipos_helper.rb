module EquiposHelper

	def jugador_children(objects)
	    if(objects)
	      output = Array.new
	      objects.each do |o|
	        output << [o.nombres, o.id]
	      end
	      output
	    end
	end


end
