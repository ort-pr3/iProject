class GenericModelsController < ApplicationController
  before_action :set_generic_model, only: [:show, :edit, :update, :destroy]

  # GET /generic_models
  # GET /generic_models.json
  def index
    @generic_models = GenericModel.all
  end

  # GET /generic_models/1
  # GET /generic_models/1.json
  def show
  end

  # GET /generic_models/new
  def new
    @generic_model = GenericModel.new
  end

  # GET /generic_models/1/edit
  def edit
  end

  # POST /generic_models
  # POST /generic_models.json
  def create
    @generic_model = GenericModel.new(generic_model_params)

    respond_to do |format|
      if @generic_model.save
        format.html { redirect_to @generic_model, notice: 'Generic model was successfully created.' }
        format.json { render :show, status: :created, location: @generic_model }
      else
        format.html { render :new }
        format.json { render json: @generic_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_models/1
  # PATCH/PUT /generic_models/1.json
  def update
    respond_to do |format|
      if @generic_model.update(generic_model_params)
        format.html { redirect_to @generic_model, notice: 'Generic model was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_model }
      else
        format.html { render :edit }
        format.json { render json: @generic_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_models/1
  # DELETE /generic_models/1.json
  def destroy
    @generic_model.destroy
    respond_to do |format|
      format.html { redirect_to generic_models_url, notice: 'Generic model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_model
      @generic_model = GenericModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_model_params
      params.require(:generic_model).permit(:user_id)
    end
end
