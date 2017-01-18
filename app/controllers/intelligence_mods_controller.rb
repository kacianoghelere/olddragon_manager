class IntelligenceModsController < ApplicationController
  before_action :set_intelligence_mod, only: [:show, :edit, :update, :destroy]

  # GET /intelligence_mods
  # GET /intelligence_mods.json
  def index
    @intelligence_mods = IntelligenceMod.all
  end

  # GET /intelligence_mods/1
  # GET /intelligence_mods/1.json
  def show
  end

  # GET /intelligence_mods/new
  def new
    @intelligence_mod = IntelligenceMod.new
  end

  # GET /intelligence_mods/1/edit
  def edit
  end

  # POST /intelligence_mods
  # POST /intelligence_mods.json
  def create
    @intelligence_mod = IntelligenceMod.new(intelligence_mod_params)

    respond_to do |format|
      if @intelligence_mod.save
        format.html { redirect_to @intelligence_mod, notice: 'Intelligence mod was successfully created.' }
        format.json { render :show, status: :created, location: @intelligence_mod }
      else
        format.html { render :new }
        format.json { render json: @intelligence_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intelligence_mods/1
  # PATCH/PUT /intelligence_mods/1.json
  def update
    respond_to do |format|
      if @intelligence_mod.update(intelligence_mod_params)
        format.html { redirect_to @intelligence_mod, notice: 'Intelligence mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @intelligence_mod }
      else
        format.html { render :edit }
        format.json { render json: @intelligence_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intelligence_mods/1
  # DELETE /intelligence_mods/1.json
  def destroy
    @intelligence_mod.destroy
    respond_to do |format|
      format.html { redirect_to intelligence_mods_url, notice: 'Intelligence mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intelligence_mod
      @intelligence_mod = IntelligenceMod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intelligence_mod_params
      params.require(:intelligence_mod).permit(:value, :languages_mod, :learn_magic_mod, :magic_circle_1_mod, :magic_circle_2_mod, :magic_circle_3_mod, :magic_circle_4_mod, :magic_circle_5_mod, :magic_circle_6_mod, :magic_circle_7_mod, :magic_circle_8_mod, :magic_circle_9_mod)
    end
end
