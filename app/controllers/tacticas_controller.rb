class TacticasController < ApplicationController
  # GET /tacticas
  # GET /tacticas.json
  def index
    @tacticas = Tactica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tacticas }
    end
  end

  # GET /tacticas/1
  # GET /tacticas/1.json
  def show
    @tactica = Tactica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tactica }
    end
  end

  # GET /tacticas/new
  # GET /tacticas/new.json
  def new
    @tactica = Tactica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tactica }
    end
  end

  # GET /tacticas/1/edit
  def edit
    @tactica = Tactica.find(params[:id])
  end

  # POST /tacticas
  # POST /tacticas.json
  def create
    @tactica = Tactica.new(params[:tactica])

    respond_to do |format|
      if @tactica.save
        format.html { redirect_to @tactica, notice: 'Tactica was successfully created.' }
        format.json { render json: @tactica, status: :created, location: @tactica }
      else
        format.html { render action: "new" }
        format.json { render json: @tactica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tacticas/1
  # PUT /tacticas/1.json
  def update
    @tactica = Tactica.find(params[:id])

    respond_to do |format|
      if @tactica.update_attributes(params[:tactica])
        format.html { redirect_to @tactica, notice: 'Tactica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tactica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tacticas/1
  # DELETE /tacticas/1.json
  def destroy
    @tactica = Tactica.find(params[:id])
    @tactica.destroy

    respond_to do |format|
      format.html { redirect_to tacticas_url }
      format.json { head :no_content }
    end
  end
end
