class CharacterRaceWeaponsController < ApplicationController
  before_action :set_character_race_weapon, only: [:show, :edit, :update, :destroy]

  # GET /character_race_weapons
  # GET /character_race_weapons.json
  def index
    @character_race_weapons = CharacterRaceWeapon.all
  end

  # GET /character_race_weapons/1
  # GET /character_race_weapons/1.json
  def show
  end

  # GET /character_race_weapons/new
  def new
    @character_race_weapon = CharacterRaceWeapon.new
  end

  # GET /character_race_weapons/1/edit
  def edit
  end

  # POST /character_race_weapons
  # POST /character_race_weapons.json
  def create
    @character_race_weapon = CharacterRaceWeapon.new(character_race_weapon_params)

    respond_to do |format|
      if @character_race_weapon.save
        format.html { redirect_to @character_race_weapon, notice: 'Character race weapon was successfully created.' }
        format.json { render :show, status: :created, location: @character_race_weapon }
      else
        format.html { render :new }
        format.json { render json: @character_race_weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_race_weapons/1
  # PATCH/PUT /character_race_weapons/1.json
  def update
    respond_to do |format|
      if @character_race_weapon.update(character_race_weapon_params)
        format.html { redirect_to @character_race_weapon, notice: 'Character race weapon was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_race_weapon }
      else
        format.html { render :edit }
        format.json { render json: @character_race_weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_race_weapons/1
  # DELETE /character_race_weapons/1.json
  def destroy
    @character_race_weapon.destroy
    respond_to do |format|
      format.html { redirect_to character_race_weapons_url, notice: 'Character race weapon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_race_weapon
      @character_race_weapon = CharacterRaceWeapon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_race_weapon_params
      params.require(:character_race_weapon).permit(:character_race_id, :weapon_type_id)
    end
end
