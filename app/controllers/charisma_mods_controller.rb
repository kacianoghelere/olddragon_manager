class CharismaModsController < ApplicationController
  before_action :set_charisma_mod, only: [:show, :edit, :update, :destroy]

  # GET /charisma_mods
  # GET /charisma_mods.json
  def index
    @charisma_mods = CharismaMod.all
  end

  # GET /charisma_mods/1
  # GET /charisma_mods/1.json
  def show
  end

  # GET /charisma_mods/new
  def new
    @charisma_mod = CharismaMod.new
  end

  # GET /charisma_mods/1/edit
  def edit
  end

  # POST /charisma_mods
  # POST /charisma_mods.json
  def create
    @charisma_mod = CharismaMod.new(charisma_mod_params)

    respond_to do |format|
      if @charisma_mod.save
        format.html { redirect_to @charisma_mod, notice: 'Charisma mod was successfully created.' }
        format.json { render :show, status: :created, location: @charisma_mod }
      else
        format.html { render :new }
        format.json { render json: @charisma_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charisma_mods/1
  # PATCH/PUT /charisma_mods/1.json
  def update
    respond_to do |format|
      if @charisma_mod.update(charisma_mod_params)
        format.html { redirect_to @charisma_mod, notice: 'Charisma mod was successfully updated.' }
        format.json { render :show, status: :ok, location: @charisma_mod }
      else
        format.html { render :edit }
        format.json { render json: @charisma_mod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charisma_mods/1
  # DELETE /charisma_mods/1.json
  def destroy
    @charisma_mod.destroy
    respond_to do |format|
      format.html { redirect_to charisma_mods_url, notice: 'Charisma mod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charisma_mod
      @charisma_mod = CharismaMod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charisma_mod_params
      params.require(:charisma_mod).permit(:value, :followers_mod, :reaction_mod, :undead_mod)
    end
end
