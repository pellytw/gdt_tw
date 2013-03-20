class EquipoFecha < ActiveRecord::Base
  attr_accessible :equipo_id, :fecha_desde, :fecha_hasta, :fecha_id, :jugador_id
end
