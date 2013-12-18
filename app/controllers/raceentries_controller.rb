class RaceentriesController < ApplicationController
  # GET /raceentries
  # GET /raceentries.json
  def index
    @raceentries = Raceentry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @raceentries }
    end
  end

  # GET /raceentries/1
  # GET /raceentries/1.json
  def show
    @raceentry = Raceentry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @raceentry }
    end
  end

  # GET /raceentries/new
  # GET /raceentries/new.json
  def new
    @raceentry = Raceentry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @raceentry }
    end
  end

  # GET /raceentries/1/edit
  def edit
    @raceentry = Raceentry.find(params[:id])
  end

  # POST /raceentries
  # POST /raceentries.json
  def create
    @raceentry = Raceentry.new(params[:raceentry])

    respond_to do |format|
      if @raceentry.save
        format.html { redirect_to @raceentry, notice: 'Raceentry was successfully created.' }
        format.json { render json: @raceentry, status: :created, location: @raceentry }
      else
        format.html { render action: "new" }
        format.json { render json: @raceentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /raceentries/1
  # PUT /raceentries/1.json
  def update
    @raceentry = Raceentry.find(params[:id])

    respond_to do |format|
      if @raceentry.update_attributes(params[:raceentry])
        format.html { redirect_to @raceentry, notice: 'Raceentry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @raceentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raceentries/1
  # DELETE /raceentries/1.json
  def destroy
    @raceentry = Raceentry.find(params[:id])
    @raceentry.destroy

    respond_to do |format|
      format.html { redirect_to raceentries_url }
      format.json { head :no_content }
    end
  end
end
