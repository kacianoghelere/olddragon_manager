class ConstitutionModsController < ApplicationController
  before_action :set_constitution_mod, only: [:show, :edit, :update, :destroy]

  # GET /constitution_mods
  # GET /constitution_mods.json
  def index
    @constitution_mods = ConstitutionMod.all
  end

  # GET /constitution_mods/1
  # GET /constitution_mods/1.json
  def show
  end

  # GET /constitution_mods/new
  def new
    @constitution_mod = ConstitutionMod.new
  end

  # GET /constitution_mods/1/edit
  def edit
  end

  # POST /constitution_mods
  # POST /constitution_mods.json
  def create
    @constitution_mod = ConstitutionMod.new(constitution_mod_params)

    respond_to do |format|
      if @constitution_mod.save
        format.html { redirect_to @constitution_mod, notice: 'Constitution mod was successfully created.' }
        format.json { render :show, status: :created, location: @constitution_mod }
      else
        format.html { render :new }
        format.json { render json: @constitution_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constitution_mods/1
  # PATCH/PUT /constitution_mods/1.json
  def update
    respond_to do |format|
      if @constitution_mod.update(constitution_mod_params)
        format.html { redirect_to @constitution_mod, notice: 'Constitution mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @constitution_mod }
      else
        format.html { render :edit }
        format.json { render json: @constitution_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constitution_mods/1
  # DELETE /constitution_mods/1.json
  def destroy
    @constitution_mod.destroy
    respond_to do |format|
      format.html { redirect_to constitution_mods_url, notice: 'Constitution mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constitution_mod
      @constitution_mod = ConstitutionMod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constitution_mod_params
      params.require(:constitution_mod).permit(:value, :hitpoints_mod, :protection_mod, :resurrection_mod)
    end
end
