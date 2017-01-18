class StrengthModsController < ApplicationController
  before_action :set_strength_mod, only: [:show, :edit, :update, :destroy]

  # GET /strength_mods
  # GET /strength_mods.json
  def index
    @strength_mods = StrengthMod.all
  end

  # GET /strength_mods/1
  # GET /strength_mods/1.json
  def show
  end

  # GET /strength_mods/new
  def new
    @strength_mod = StrengthMod.new
  end

  # GET /strength_mods/1/edit
  def edit
  end

  # POST /strength_mods
  # POST /strength_mods.json
  def create
    @strength_mod = StrengthMod.new(strength_mod_params)

    respond_to do |format|
      if @strength_mod.save
        format.html { redirect_to @strength_mod, notice: 'Strength mod was successfully created.' }
        format.json { render :show, status: :created, location: @strength_mod }
      else
        format.html { render :new }
        format.json { render json: @strength_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strength_mods/1
  # PATCH/PUT /strength_mods/1.json
  def update
    respond_to do |format|
      if @strength_mod.update(strength_mod_params)
        format.html { redirect_to @strength_mod, notice: 'Strength mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @strength_mod }
      else
        format.html { render :edit }
        format.json { render json: @strength_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strength_mods/1
  # DELETE /strength_mods/1.json
  def destroy
    @strength_mod.destroy
    respond_to do |format|
      format.html { redirect_to strength_mods_url, notice: 'Strength mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strength_mod
      @strength_mod = StrengthMod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def strength_mod_params
      params.require(:strength_mod).permit(:value, :attack_mod, :damage_mod)
    end
end
