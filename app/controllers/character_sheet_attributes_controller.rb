class CharacterSheetAttributesController < ApplicationController
  before_action :set_character_sheet_attribute, only: [:show, :edit, :update, :destroy]

  # GET /character_sheet_attributes
  # GET /character_sheet_attributes.json
  def index
    @character_sheet_attributes = CharacterSheetAttribute.all
  end

  # GET /character_sheet_attributes/1
  # GET /character_sheet_attributes/1.json
  def show
  end

  # GET /character_sheet_attributes/new
  def new
    @character_sheet_attribute = CharacterSheetAttribute.new
  end

  # GET /character_sheet_attributes/1/edit
  def edit
  end

  # POST /character_sheet_attributes
  # POST /character_sheet_attributes.json
  def create
    @character_sheet_attribute = CharacterSheetAttribute.new(character_sheet_attribute_params)

    respond_to do |format|
      if @character_sheet_attribute.save
        format.html { redirect_to @character_sheet_attribute, notice: 'Character sheet attribute was successfully created.' }
        format.json { render :show, status: :created, location: @character_sheet_attribute }
      else
        format.html { render :new }
        format.json { render json: @character_sheet_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_sheet_attributes/1
  # PATCH/PUT /character_sheet_attributes/1.json
  def update
    respond_to do |format|
      if @character_sheet_attribute.update(character_sheet_attribute_params)
        format.html { redirect_to @character_sheet_attribute, notice: 'Character sheet attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_sheet_attribute }
      else
        format.html { render :edit }
        format.json { render json: @character_sheet_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_sheet_attributes/1
  # DELETE /character_sheet_attributes/1.json
  def destroy
    @character_sheet_attribute.destroy
    respond_to do |format|
      format.html { redirect_to character_sheet_attributes_url, notice: 'Character sheet attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_sheet_attribute
      @character_sheet_attribute = CharacterSheetAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_sheet_attribute_params
      params.require(:character_sheet_attribute).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
    end
end
