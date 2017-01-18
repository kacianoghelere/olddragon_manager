class WisdomModsController < ApplicationController
  before_action :set_wisdom_mod, only: [:show, :edit, :update, :destroy]

  # GET /wisdom_mods
  # GET /wisdom_mods.json
  def index
    @wisdom_mods = WisdomMod.all
  end

  # GET /wisdom_mods/1
  # GET /wisdom_mods/1.json
  def show
  end

  # GET /wisdom_mods/new
  def new
    @wisdom_mod = WisdomMod.new
  end

  # GET /wisdom_mods/1/edit
  def edit
  end

  # POST /wisdom_mods
  # POST /wisdom_mods.json
  def create
    @wisdom_mod = WisdomMod.new(wisdom_mod_params)

    respond_to do |format|
      if @wisdom_mod.save
        format.html { redirect_to @wisdom_mod, notice: 'Wisdom mod was successfully created.' }
        format.json { render :show, status: :created, location: @wisdom_mod }
      else
        format.html { render :new }
        format.json { render json: @wisdom_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wisdom_mods/1
  # PATCH/PUT /wisdom_mods/1.json
  def update
    respond_to do |format|
      if @wisdom_mod.update(wisdom_mod_params)
        format.html { redirect_to @wisdom_mod, notice: 'Wisdom mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @wisdom_mod }
      else
        format.html { render :edit }
        format.json { render json: @wisdom_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wisdom_mods/1
  # DELETE /wisdom_mods/1.json
  def destroy
    @wisdom_mod.destroy
    respond_to do |format|
      format.html { redirect_to wisdom_mods_url, notice: 'Wisdom mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wisdom_mod
      @wisdom_mod = WisdomMod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wisdom_mod_params
      params.require(:wisdom_mod).permit(:value, :protection_mod, :magic_cicle_1_mod, :magic_cicle_2_mod, :magic_cicle_3_mod)
    end
end
