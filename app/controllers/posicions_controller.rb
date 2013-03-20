class PosicionsController < ApplicationController
  # GET /posicions
  # GET /posicions.json
  def index
    @posicions = Posicion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posicions }
    end
  end

  # GET /posicions/1
  # GET /posicions/1.json
  def show
    @posicion = Posicion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @posicion }
    end
  end

  # GET /posicions/new
  # GET /posicions/new.json
  def new
    @posicion = Posicion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @posicion }
    end
  end

  # GET /posicions/1/edit
  def edit
    @posicion = Posicion.find(params[:id])
  end

  # POST /posicions
  # POST /posicions.json
  def create
    @posicion = Posicion.new(params[:posicion])

    respond_to do |format|
      if @posicion.save
        format.html { redirect_to @posicion, notice: 'Posicion was successfully created.' }
        format.json { render json: @posicion, status: :created, location: @posicion }
      else
        format.html { render action: "new" }
        format.json { render json: @posicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posicions/1
  # PUT /posicions/1.json
  def update
    @posicion = Posicion.find(params[:id])

    respond_to do |format|
      if @posicion.update_attributes(params[:posicion])
        format.html { redirect_to @posicion, notice: 'Posicion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @posicion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posicions/1
  # DELETE /posicions/1.json
  def destroy
    @posicion = Posicion.find(params[:id])
    @posicion.destroy

    respond_to do |format|
      format.html { redirect_to posicions_url }
      format.json { head :no_content }
    end
  end
end
