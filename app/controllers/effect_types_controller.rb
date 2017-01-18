class EffectTypesController < ApplicationController
  before_action :set_effect_type, only: [:show, :edit, :update, :destroy]

  # GET /effect_types
  # GET /effect_types.json
  def index
    @effect_types = EffectType.all
  end

  # GET /effect_types/1
  # GET /effect_types/1.json
  def show
  end

  # GET /effect_types/new
  def new
    @effect_type = EffectType.new
  end

  # GET /effect_types/1/edit
  def edit
  end

  # POST /effect_types
  # POST /effect_types.json
  def create
    @effect_type = EffectType.new(effect_type_params)

    respond_to do |format|
      if @effect_type.save
        format.html { redirect_to @effect_type, notice: 'Effect type was successfully created.' }
        format.json { render :show, status: :created, location: @effect_type }
      else
        format.html { render :new }
        format.json { render json: @effect_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /effect_types/1
  # PATCH/PUT /effect_types/1.json
  def update
    respond_to do |format|
      if @effect_type.update(effect_type_params)
        format.html { redirect_to @effect_type, notice: 'Effect type was successfully updated.' }
        format.json { render :show, status: :ok, location: @effect_type }
      else
        format.html { render :edit }
        format.json { render json: @effect_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /effect_types/1
  # DELETE /effect_types/1.json
  def destroy
    @effect_type.destroy
    respond_to do |format|
      format.html { redirect_to effect_types_url, notice: 'Effect type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_effect_type
      @effect_type = EffectType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def effect_type_params
      params.require(:effect_type).permit(:name)
    end
end
