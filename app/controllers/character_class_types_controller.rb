class CharacterClassTypesController < ApplicationController
  before_action :set_character_class_type, only: [:show, :edit, :update, :destroy]

  # GET /character_class_types
  # GET /character_class_types.json
  def index
    @character_class_types = CharacterClassType.all
  end

  # GET /character_class_types/1
  # GET /character_class_types/1.json
  def show
  end

  # GET /character_class_types/new
  def new
    @character_class_type = CharacterClassType.new
  end

  # GET /character_class_types/1/edit
  def edit
  end

  # POST /character_class_types
  # POST /character_class_types.json
  def create
    @character_class_type = CharacterClassType.new(character_class_type_params)

    respond_to do |format|
      if @character_class_type.save
        format.html { redirect_to @character_class_type, notice: 'Character class type was successfully created.' }
        format.json { render :show, status: :created, location: @character_class_type }
      else
        format.html { render :new }
        format.json { render json: @character_class_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_class_types/1
  # PATCH/PUT /character_class_types/1.json
  def update
    respond_to do |format|
      if @character_class_type.update(character_class_type_params)
        format.html { redirect_to @character_class_type, notice: 'Character class type was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_class_type }
      else
        format.html { render :edit }
        format.json { render json: @character_class_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_class_types/1
  # DELETE /character_class_types/1.json
  def destroy
    @character_class_type.destroy
    respond_to do |format|
      format.html { redirect_to character_class_types_url, notice: 'Character class type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_class_type
      @character_class_type = CharacterClassType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_class_type_params
      params.require(:character_class_type).permit(:name, :magic, :protection, :key_attr, :can_bane_undead, :has_thief_talents)
    end
end
