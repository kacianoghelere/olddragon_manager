class MaterialTypesController < ApplicationController
  before_action :set_material_type, only: [:show, :edit, :update, :destroy]

  # GET /material_types
  # GET /material_types.json
  def index
    @material_types = MaterialType.all
  end

  # GET /material_types/1
  # GET /material_types/1.json
  def show
  end

  # GET /material_types/new
  def new
    @material_type = MaterialType.new
  end

  # GET /material_types/1/edit
  def edit
  end

  # POST /material_types
  # POST /material_types.json
  def create
    @material_type = MaterialType.new(material_type_params)

    respond_to do |format|
      if @material_type.save
        format.html { redirect_to @material_type, notice: 'Material type was successfully created.' }
        format.json { render :show, status: :created, location: @material_type }
      else
        format.html { render :new }
        format.json { render json: @material_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_types/1
  # PATCH/PUT /material_types/1.json
  def update
    respond_to do |format|
      if @material_type.update(material_type_params)
        format.html { redirect_to @material_type, notice: 'Material type was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_type }
      else
        format.html { render :edit }
        format.json { render json: @material_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_types/1
  # DELETE /material_types/1.json
  def destroy
    @material_type.destroy
    respond_to do |format|
      format.html { redirect_to material_types_url, notice: 'Material type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_type
      @material_type = MaterialType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_type_params
      params.require(:material_type).permit(:name)
    end
end
