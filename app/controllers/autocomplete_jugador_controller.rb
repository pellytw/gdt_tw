class AutocompleteJugadorController < ApplicationController
	def index
    	@jugadors =  Jugador.order(:nombres).where("nombres like ?", "%#{params[:term]}%")
    	render json: @jugadors.map(&:nombres )
  	end
end
