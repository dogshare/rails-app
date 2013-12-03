class DogsharesController < ApplicationController
  before_action :set_dogshare, only: [:show, :edit, :update, :destroy]

  # GET /dogshares
  # GET /dogshares.json
  def index
    @dogshares = Dogshare.all
  end

  # GET /dogshares/1
  # GET /dogshares/1.json
  def show
  end

  # GET /dogshares/new
  def new
    @dogshare = Dogshare.new
  end

  # GET /dogshares/1/edit
  def edit
  end

  # POST /dogshares
  # POST /dogshares.json
  def create
    @dogshare = Dogshare.new(dogshare_params)

    respond_to do |format|
      if @dogshare.save
        format.html { redirect_to @dogshare, notice: 'Dogshare was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dogshare }
      else
        format.html { render action: 'new' }
        format.json { render json: @dogshare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogshares/1
  # PATCH/PUT /dogshares/1.json
  def update
    respond_to do |format|
      if @dogshare.update(dogshare_params)
        format.html { redirect_to @dogshare, notice: 'Dogshare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dogshare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogshares/1
  # DELETE /dogshares/1.json
  def destroy
    @dogshare.destroy
    respond_to do |format|
      format.html { redirect_to dogshares_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dogshare
      @dogshare = Dogshare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dogshare_params
      params.require(:dogshare).permit(:dog_id, :sitter_id, :available_day_start, :available_day_end)
    end
end
