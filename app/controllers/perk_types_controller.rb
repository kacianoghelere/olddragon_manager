class PerkTypesController < ApplicationController
  before_action :set_perk_type, only: [:show, :edit, :update, :destroy]

  # GET /perk_types
  # GET /perk_types.json
  def index
    @perk_types = PerkType.all
  end

  # GET /perk_types/1
  # GET /perk_types/1.json
  def show
  end

  # GET /perk_types/new
  def new
    @perk_type = PerkType.new
  end

  # GET /perk_types/1/edit
  def edit
  end

  # POST /perk_types
  # POST /perk_types.json
  def create
    @perk_type = PerkType.new(perk_type_params)

    respond_to do |format|
      if @perk_type.save
        format.html { redirect_to @perk_type, notice: 'Perk type was successfully created.' }
        format.json { render :show, status: :created, location: @perk_type }
      else
        format.html { render :new }
        format.json { render json: @perk_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perk_types/1
  # PATCH/PUT /perk_types/1.json
  def update
    respond_to do |format|
      if @perk_type.update(perk_type_params)
        format.html { redirect_to @perk_type, notice: 'Perk type was successfully updated.' }
        format.json { render :show, status: :ok, location: @perk_type }
      else
        format.html { render :edit }
        format.json { render json: @perk_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perk_types/1
  # DELETE /perk_types/1.json
  def destroy
    @perk_type.destroy
    respond_to do |format|
      format.html { redirect_to perk_types_url, notice: 'Perk type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perk_type
      @perk_type = PerkType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perk_type_params
      params.require(:perk_type).permit(:name)
    end
end
