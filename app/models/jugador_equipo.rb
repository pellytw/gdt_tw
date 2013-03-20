class JugadorEquipo < ActiveRecord::Base

  attr_accessible :equipo_id, :fecha_desde, :fecha_hasta, :jugador_id

  belongs_to :equipo
  belongs_to :jugador
  
end
