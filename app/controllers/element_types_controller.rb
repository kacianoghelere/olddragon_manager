class ElementTypesController < ApplicationController
  before_action :set_element_type, only: [:show, :edit, :update, :destroy]

  # GET /element_types
  # GET /element_types.json
  def index
    @element_types = ElementType.all
  end

  # GET /element_types/1
  # GET /element_types/1.json
  def show
  end

  # GET /element_types/new
  def new
    @element_type = ElementType.new
  end

  # GET /element_types/1/edit
  def edit
  end

  # POST /element_types
  # POST /element_types.json
  def create
    @element_type = ElementType.new(element_type_params)

    respond_to do |format|
      if @element_type.save
        format.html { redirect_to @element_type, notice: 'Element type was successfully created.' }
        format.json { render :show, status: :created, location: @element_type }
      else
        format.html { render :new }
        format.json { render json: @element_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /element_types/1
  # PATCH/PUT /element_types/1.json
  def update
    respond_to do |format|
      if @element_type.update(element_type_params)
        format.html { redirect_to @element_type, notice: 'Element type was successfully updated.' }
        format.json { render :show, status: :ok, location: @element_type }
      else
        format.html { render :edit }
        format.json { render json: @element_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /element_types/1
  # DELETE /element_types/1.json
  def destroy
    @element_type.destroy
    respond_to do |format|
      format.html { redirect_to element_types_url, notice: 'Element type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_element_type
      @element_type = ElementType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def element_type_params
      params.require(:element_type).permit(:name)
    end
end
