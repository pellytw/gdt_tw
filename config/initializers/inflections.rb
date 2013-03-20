# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /^(ox)$/i, '\1en'
  inflect.singular /^(ox)en/i, '\1'
  inflect.irregular 'person', 'people'
  inflect.uncountable %w( fish sheep )
  inflect.irregular 'participante', 'participantes'
  #inflect.irregular 'club', 'clubes'
  inflect.irregular 'equipo', 'equipos'
  inflect.irregular 'estado', 'estados'
  inflect.irregular 'fecha', 'fechas'
  #inflect.irregular 'jugador', 'jugadores'
  inflect.irregular 'equipo_fecha', 'equipos_fechas'
  #inflect.irregular 'jugador_equipo', 'jugadores_equipos'
  inflect.irregular 'error impide', 'errores impidieron'
end