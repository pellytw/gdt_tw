class Jugador < ActiveRecord::Base
  attr_accessible :apellido, :club_id, :nombre, :posicion_id, :disponible
  belongs_to :club
  belongs_to :posicion

  has_many :equipo, :through => :jugador_equipo
  has_many :jugador_equipo, :dependent => :destroy 

  def to_s
  	self.nombre + " " + self.apellido
  end

end
