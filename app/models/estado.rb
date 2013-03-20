class Estado < ActiveRecord::Base
  attr_accessible :capitan, :chenemigo, :fecha_id, :figura, :goles, :goles_de_penal, :jugador_id, :no_suma_puntos, :penales_atajados, :penales_errados, :puntaje_dario, :puntaje_total_fecha, :roja, :titular, :valla_invicta
end
