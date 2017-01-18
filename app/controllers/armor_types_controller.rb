class ArmorTypesController < ApplicationController
  before_action :set_armor_type, only: [:show, :edit, :update, :destroy]

  # GET /armor_types
  # GET /armor_types.json
  def index
    @armor_types = ArmorType.all
  end

  # GET /armor_types/1
  # GET /armor_types/1.json
  def show
  end

  # GET /armor_types/new
  def new
    @armor_type = ArmorType.new
  end

  # GET /armor_types/1/edit
  def edit
  end

  # POST /armor_types
  # POST /armor_types.json
  def create
    @armor_type = ArmorType.new(armor_type_params)

    respond_to do |format|
      if @armor_type.save
        format.html { redirect_to @armor_type, notice: 'Armor type was successfully created.' }
        format.json { render :show, status: :created, location: @armor_type }
      else
        format.html { render :new }
        format.json { render json: @armor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /armor_types/1
  # PATCH/PUT /armor_types/1.json
  def update
    respond_to do |format|
      if @armor_type.update(armor_type_params)
        format.html { redirect_to @armor_type, notice: 'Armor type was successfully updated.' }
        format.json { render :show, status: :ok, location: @armor_type }
      else
        format.html { render :edit }
        format.json { render json: @armor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armor_types/1
  # DELETE /armor_types/1.json
  def destroy
    @armor_type.destroy
    respond_to do |format|
      format.html { redirect_to armor_types_url, notice: 'Armor type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_armor_type
      @armor_type = ArmorType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def armor_type_params
      params.require(:armor_type).permit(:name)
    end
end
