class Equipo < ActiveRecord::Base
  
  attr_accessible :nombre, :participante_id

  belongs_to :participante

  has_many :jugador, :through => :jugador_equipo
  has_many :jugador_equipo, :dependent => :destroy

  def to_s
  	self.nombre
  end

end
