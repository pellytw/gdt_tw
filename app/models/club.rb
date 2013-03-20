class Club < ActiveRecord::Base
  
  attr_accessible :apodo, :nombre

  def to_s
  	self.nombre
  end

end
