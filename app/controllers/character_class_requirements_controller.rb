class CharacterClassRequirementsController < ApplicationController
  before_action :set_character_class_requirement, only: [:show, :edit, :update, :destroy]

  # GET /character_class_requirements
  # GET /character_class_requirements.json
  def index
    @character_class_requirements = CharacterClassRequirement.all
  end

  # GET /character_class_requirements/1
  # GET /character_class_requirements/1.json
  def show
  end

  # GET /character_class_requirements/new
  def new
    @character_class_requirement = CharacterClassRequirement.new
  end

  # GET /character_class_requirements/1/edit
  def edit
  end

  # POST /character_class_requirements
  # POST /character_class_requirements.json
  def create
    @character_class_requirement = CharacterClassRequirement.new(character_class_requirement_params)

    respond_to do |format|
      if @character_class_requirement.save
        format.html { redirect_to @character_class_requirement, notice: 'Character class requirement was successfully created.' }
        format.json { render :show, status: :created, location: @character_class_requirement }
      else
        format.html { render :new }
        format.json { render json: @character_class_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_class_requirements/1
  # PATCH/PUT /character_class_requirements/1.json
  def update
    respond_to do |format|
      if @character_class_requirement.update(character_class_requirement_params)
        format.html { redirect_to @character_class_requirement, notice: 'Character class requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_class_requirement }
      else
        format.html { render :edit }
        format.json { render json: @character_class_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_class_requirements/1
  # DELETE /character_class_requirements/1.json
  def destroy
    @character_class_requirement.destroy
    respond_to do |format|
      format.html { redirect_to character_class_requirements_url, notice: 'Character class requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_class_requirement
      @character_class_requirement = CharacterClassRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_class_requirement_params
      params.require(:character_class_requirement).permit(:str_mod, :dex_mod, :cons_mod, :int_mod, :wis_mod, :char_mod, :character_classes_id)
    end
end
