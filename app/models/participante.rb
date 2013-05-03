class Participante < ActiveRecord::Base
  
  attr_accessible :apellido, :apodo, :nombre, :user_id

  belongs_to :user
  has_many :equipo

  def to_s
  	self.apodo
  end

end
