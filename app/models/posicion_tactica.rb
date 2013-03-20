class PosicionTactica < ActiveRecord::Base
  attr_accessible :fecha_desde, :fecha_hasta, :posicion_id, :tactica_id
end
