class BrtsController < ApplicationController
  # GET /brts
  # GET /brts.json
  def index
    @brts = Brt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brts }
    end
  end

  # GET /brts/1
  # GET /brts/1.json
  def show
    @brt = Brt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brt }
    end
  end

  # GET /brts/new
  # GET /brts/new.json
  def new
    @brt = Brt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brt }
    end
  end

  # GET /brts/1/edit
  def edit
    @brt = Brt.find(params[:id])
  end

  # POST /brts
  # POST /brts.json
  def create
    @brt = Brt.new(params[:brt])

    respond_to do |format|
      if @brt.save
        format.html { redirect_to @brt, notice: 'Brt was successfully created.' }
        format.json { render json: @brt, status: :created, location: @brt }
      else
        format.html { render action: "new" }
        format.json { render json: @brt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brts/1
  # PUT /brts/1.json
  def update
    @brt = Brt.find(params[:id])

    respond_to do |format|
      if @brt.update_attributes(params[:brt])
        format.html { redirect_to @brt, notice: 'Brt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brts/1
  # DELETE /brts/1.json
  def destroy
    @brt = Brt.find(params[:id])
    @brt.destroy

    respond_to do |format|
      format.html { redirect_to brts_url }
      format.json { head :no_content }
    end
  end
end
