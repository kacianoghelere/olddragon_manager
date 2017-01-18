class LanguageTypesController < ApplicationController
  before_action :set_language_type, only: [:show, :edit, :update, :destroy]

  # GET /language_types
  # GET /language_types.json
  def index
    @language_types = LanguageType.all
  end

  # GET /language_types/1
  # GET /language_types/1.json
  def show
  end

  # GET /language_types/new
  def new
    @language_type = LanguageType.new
  end

  # GET /language_types/1/edit
  def edit
  end

  # POST /language_types
  # POST /language_types.json
  def create
    @language_type = LanguageType.new(language_type_params)

    respond_to do |format|
      if @language_type.save
        format.html { redirect_to @language_type, notice: 'Language type was successfully created.' }
        format.json { render :show, status: :created, location: @language_type }
      else
        format.html { render :new }
        format.json { render json: @language_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_types/1
  # PATCH/PUT /language_types/1.json
  def update
    respond_to do |format|
      if @language_type.update(language_type_params)
        format.html { redirect_to @language_type, notice: 'Language type was successfully updated.' }
        format.json { render :show, status: :ok, location: @language_type }
      else
        format.html { render :edit }
        format.json { render json: @language_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_types/1
  # DELETE /language_types/1.json
  def destroy
    @language_type.destroy
    respond_to do |format|
      format.html { redirect_to language_types_url, notice: 'Language type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_type
      @language_type = LanguageType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_type_params
      params.require(:language_type).permit(:name, :description)
    end
end
