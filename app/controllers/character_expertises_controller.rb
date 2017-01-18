class CharacterExpertisesController < ApplicationController
  before_action :set_character_expertise, only: [:show, :edit, :update, :destroy]

  # GET /character_expertises
  # GET /character_expertises.json
  def index
    @character_expertises = CharacterExpertise.all
  end

  # GET /character_expertises/1
  # GET /character_expertises/1.json
  def show
  end

  # GET /character_expertises/new
  def new
    @character_expertise = CharacterExpertise.new
  end

  # GET /character_expertises/1/edit
  def edit
  end

  # POST /character_expertises
  # POST /character_expertises.json
  def create
    @character_expertise = CharacterExpertise.new(character_expertise_params)

    respond_to do |format|
      if @character_expertise.save
        format.html { redirect_to @character_expertise, notice: 'Character expertise was successfully created.' }
        format.json { render :show, status: :created, location: @character_expertise }
      else
        format.html { render :new }
        format.json { render json: @character_expertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_expertises/1
  # PATCH/PUT /character_expertises/1.json
  def update
    respond_to do |format|
      if @character_expertise.update(character_expertise_params)
        format.html { redirect_to @character_expertise, notice: 'Character expertise was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_expertise }
      else
        format.html { render :edit }
        format.json { render json: @character_expertise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_expertises/1
  # DELETE /character_expertises/1.json
  def destroy
    @character_expertise.destroy
    respond_to do |format|
      format.html { redirect_to character_expertises_url, notice: 'Character expertise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_expertise
      @character_expertise = CharacterExpertise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_expertise_params
      params.require(:character_expertise).permit(:character_sheet_id, :expertise_id)
    end
end
