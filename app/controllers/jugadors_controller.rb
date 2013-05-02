class JugadorsController < ApplicationController
  # GET /jugadors
  # GET /jugadors.json
  def index
    if params["q"] then
      if params["q"] == "" then
        @jugadors = Jugador.paginate(:page => params[:page], :per_page => 30)
      else
        @jugadors = Jugador.where(['nombres LIKE ?', "%"+params["q"]+"%"]).paginate(:page => params[:page], :per_page => 30)
      end
    else      
      @jugadors = Jugador.paginate(:page => params[:page], :per_page => 30)
    end
  end

  # GET /jugadors/1
  # GET /jugadors/1.json
  def show
    @jugador = Jugador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jugador }
    end
  end

  # GET /jugadors/new
  # GET /jugadors/new.json
  def new
    @jugador = Jugador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jugador }
    end
  end

  # GET /jugadors/1/edit
  def edit
    @jugador = Jugador.find(params[:id])
  end

  # POST /jugadors
  # POST /jugadors.json
  def create
    @jugador = Jugador.new(params[:jugador])

    respond_to do |format|
      if @jugador.save
        format.html { redirect_to @jugador, notice: 'Jugador was successfully created.' }
        format.json { render json: @jugador, status: :created, location: @jugador }
      else
        format.html { render action: "new" }
        format.json { render json: @jugador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jugadors/1
  # PUT /jugadors/1.json
  def update
    @jugador = Jugador.find(params[:id])

    respond_to do |format|
      if @jugador.update_attributes(params[:jugador])
        format.html { redirect_to @jugador, notice: 'Jugador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jugador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jugadors/1
  # DELETE /jugadors/1.json
  def destroy
    @jugador = Jugador.find(params[:id])
    @jugador.destroy

    respond_to do |format|
      format.html { redirect_to jugadors_url }
      format.json { head :no_content }
    end
  end

  def buscar_jugador
debugger
    if params["q"] then
      if params["q"] == "" then
        @jugadors = Jugador.paginate(:page => params[:page], :per_page => 5)
      else
        @jugadors = Jugador.where(['nombres LIKE ?', "%"+params["q"]+"%"]).paginate(:page => params[:page], :per_page => 5)
      end
    else      
      @jugadors = Jugador.paginate(:page => params[:page], :per_page => 5)
    end

  end

end
