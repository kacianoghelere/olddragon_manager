class DexterityModsController < ApplicationController
  before_action :set_dexterity_mod, only: [:show, :edit, :update, :destroy]

  # GET /dexterity_mods
  # GET /dexterity_mods.json
  def index
    @dexterity_mods = DexterityMod.all
  end

  # GET /dexterity_mods/1
  # GET /dexterity_mods/1.json
  def show
  end

  # GET /dexterity_mods/new
  def new
    @dexterity_mod = DexterityMod.new
  end

  # GET /dexterity_mods/1/edit
  def edit
  end

  # POST /dexterity_mods
  # POST /dexterity_mods.json
  def create
    @dexterity_mod = DexterityMod.new(dexterity_mod_params)

    respond_to do |format|
      if @dexterity_mod.save
        format.html { redirect_to @dexterity_mod, notice: 'Dexterity mod was successfully created.' }
        format.json { render :show, status: :created, location: @dexterity_mod }
      else
        format.html { render :new }
        format.json { render json: @dexterity_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dexterity_mods/1
  # PATCH/PUT /dexterity_mods/1.json
  def update
    respond_to do |format|
      if @dexterity_mod.update(dexterity_mod_params)
        format.html { redirect_to @dexterity_mod, notice: 'Dexterity mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @dexterity_mod }
      else
        format.html { render :edit }
        format.json { render json: @dexterity_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dexterity_mods/1
  # DELETE /dexterity_mods/1.json
  def destroy
    @dexterity_mod.destroy
    respond_to do |format|
      format.html { redirect_to dexterity_mods_url, notice: 'Dexterity mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dexterity_mod
      @dexterity_mod = DexterityMod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dexterity_mod_params
      params.require(:dexterity_mod).permit(:value, :attack_mod, :surprise_mod, :armor_class_mod, :protection_mod, :find_traps_mod, :silent_movement_mod, :lockpick_mod, :stealth_mod, :pickpocket_mod)
    end
end
