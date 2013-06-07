class EquiposController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

autocomplete :jugador, :nombres, :display_value => :display_jugadors, :full => true
  # GET /equipos
  # GET /equipos.json
  def index
    @equipos = Equipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipos }
    end
  end

  # GET /equipos/1
  # GET /equipos/1.json
  def show
    @equipo = Equipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipo }
    end
  end

  # GET /equipos/new
  # GET /equipos/new.json
  def new
    @equipo = Equipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipo }
    end
  end

  # GET /equipos/1/edit
  def edit
    @equipo = Equipo.find(params[:id])
  end

  # POST /equipos
  # POST /equipos.json
  def create
    @equipo = Equipo.new(params[:equipo])

    respond_to do |format|
      if @equipo.save
        format.html { redirect_to @equipo, notice: 'Equipo was successfully created.' }
        format.json { render json: @equipo, status: :created, location: @equipo }
      else
        format.html { render action: "new" }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipos/1
  # PUT /equipos/1.json
  def update
    @equipo = Equipo.find(params[:id])

    respond_to do |format|
      if @equipo.update_attributes(params[:equipo])
        format.html { redirect_to @equipo, notice: 'Equipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipos/1
  # DELETE /equipos/1.json
  def destroy
    @equipo = Equipo.find(params[:id])
    @equipo.destroy

    respond_to do |format|
      format.html { redirect_to equipos_url }
      format.json { head :no_content }
    end
  end


  def agregar_jugadores
    
    #el idEquipo es el id del Equipo del participante. No es el club del jugador
    @idEquipo = params[:id_equipo] 

    if @idEquipo then 
        Jugador.all.each do |j|      
          if params[j.id.to_s] then
            if params[j.id.to_s] == "on" then
              
              # CREAR RELACION EQUIPO JUGADOR         
              JugadorEquipo.create(:equipo_id => @idEquipo, :jugador_id => j.id, :fecha_desde => "", :fecha_hasta => "")
              
              # PONER JUGADOR VACANTE = FALSE
              j.disponible = false
              j.save

            end
          end
        end
    end
    redirect_to :controller => 'equipos', :action => 'show', :id => @idEquipo
  end

  def eliminar_jugadores

    @idEquipo = params[:id_equipo]
    @idJugador = params[:id_jugador]

    @je = JugadorEquipo.where(:equipo_id => @idEquipo, :jugador_id => @idJugador)
    
    @j = Jugador.find(@idJugador)
    @j.disponible = true
    @j.save
    
    JugadorEquipo.destroy(@je)

    redirect_to :back

  end

  def equipo_fecha

    # @je = current_user.jugador.order("posicion_id, nombres ASC")
    @je_arqueros = current_user.jugador.where(:posicion_id => 1).order("nombres ASC")
    @je_defensores_centrales = current_user.jugador.where(:posicion_id => 2).order("nombres ASC")
    @je_defensores_laterales = current_user.jugador.where(:posicion_id => 3).order("nombres ASC")
    @je_volantes_centrales = current_user.jugador.where(:posicion_id => 4).order("nombres ASC")
    @je_volantes_laterales = current_user.jugador.where(:posicion_id => 5).order("nombres ASC")
    @je_delanteros = current_user.jugador.where(:posicion_id => 6).order("nombres ASC")

  end

  def reemplazar_jugador

    debugger

  end



end
