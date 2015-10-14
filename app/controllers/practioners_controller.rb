class PractionersController < ApplicationController
  before_action :set_practioner, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! 

  # GET /practioners
  # GET /practioners.json
  def index
    @practioners = Practioner.all
  end

  # GET /practioners/1
  # GET /practioners/1.json
  def show
  end

  # GET /practioners/new
  def new
    @practioner = Practioner.new
  end

  # GET /practioners/1/edit
  def edit
  end

  # POST /practioners
  # POST /practioners.json
  def create
    @practioner = Practioner.new(practioner_params)

    respond_to do |format|
      if @practioner.save
        format.html { redirect_to @practioner, notice: 'Practioner was successfully created.' }
        format.json { render :show, status: :created, location: @practioner }
      else
        format.html { render :new }
        format.json { render json: @practioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practioners/1
  # PATCH/PUT /practioners/1.json
  def update
    respond_to do |format|
      if @practioner.update(practioner_params)
        format.html { redirect_to @practioner, notice: 'Practioner was successfully updated.' }
        format.json { render :show, status: :ok, location: @practioner }
      else
        format.html { render :edit }
        format.json { render json: @practioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practioners/1
  # DELETE /practioners/1.json
  def destroy
    @practioner.destroy
    respond_to do |format|
      format.html { redirect_to practioners_url, notice: 'Practioner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practioner
      @practioner = Practioner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practioner_params
      params.require(:practioner).permit(:name, :address, :state, :city, :zip, :school_degree_received_from, :years_in_practice)
    end
end
