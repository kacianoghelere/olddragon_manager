class SpellTypesController < ApplicationController
  before_action :set_spell_type, only: [:show, :edit, :update, :destroy]

  # GET /spell_types
  # GET /spell_types.json
  def index
    @spell_types = SpellType.all
  end

  # GET /spell_types/1
  # GET /spell_types/1.json
  def show
  end

  # GET /spell_types/new
  def new
    @spell_type = SpellType.new
  end

  # GET /spell_types/1/edit
  def edit
  end

  # POST /spell_types
  # POST /spell_types.json
  def create
    @spell_type = SpellType.new(spell_type_params)

    respond_to do |format|
      if @spell_type.save
        format.html { redirect_to @spell_type, notice: 'Spell type was successfully created.' }
        format.json { render :show, status: :created, location: @spell_type }
      else
        format.html { render :new }
        format.json { render json: @spell_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spell_types/1
  # PATCH/PUT /spell_types/1.json
  def update
    respond_to do |format|
      if @spell_type.update(spell_type_params)
        format.html { redirect_to @spell_type, notice: 'Spell type was successfully updated.' }
        format.json { render :show, status: :ok, location: @spell_type }
      else
        format.html { render :edit }
        format.json { render json: @spell_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spell_types/1
  # DELETE /spell_types/1.json
  def destroy
    @spell_type.destroy
    respond_to do |format|
      format.html { redirect_to spell_types_url, notice: 'Spell type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spell_type
      @spell_type = SpellType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spell_type_params
      params.require(:spell_type).permit(:name)
    end
end
