class Participante < ActiveRecord::Base
  
  attr_accessible :apellido, :apodo, :nombre, :user_id

  def to_s
  	self.apodo
  end

end
