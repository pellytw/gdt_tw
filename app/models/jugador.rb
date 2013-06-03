class Jugador < ActiveRecord::Base
  attr_accessible :club_id, :nombres, :posicion_id, :disponible
  belongs_to :club
  belongs_to :posicion

  has_many :equipo, :through => :jugador_equipo
  has_many :jugador_equipo, :dependent => :destroy 

  def to_s
  	self.nombres
  end

  def display_jugadors
    self.id.to_s + ' - ' + self.nombres + ' - Club: ' + self.club.to_s    
  end

end
