class AttributesController < ApplicationController
  before_action :set_attribute, only: %i[ show edit update destroy ]

  # GET /attributes or /attributes.json
  def index
    @attributes = Attribute.all
  end

  # GET /attributes/1 or /attributes/1.json
  def show
  end

  # GET /attributes/new
  def new
    @attribute = Attribute.new
  end

  # GET /attributes/1/edit
  def edit
  end

  # POST /attributes or /attributes.json
  def create
    @attribute = Attribute.new(attribute_params)

    respond_to do |format|
      if @attribute.save
        format.html { redirect_to @attribute, notice: "Attribute was successfully created." }
        format.json { render :show, status: :created, location: @attribute }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attributes/1 or /attributes/1.json
  def update
    respond_to do |format|
      if @attribute.update(attribute_params)
        format.html { redirect_to @attribute, notice: "Attribute was successfully updated." }
        format.json { render :show, status: :ok, location: @attribute }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attributes/1 or /attributes/1.json
  def destroy
    @attribute.destroy
    respond_to do |format|
      format.html { redirect_to attributes_url, notice: "Attribute was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute
      @attribute = Attribute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attribute_params
      params.require(:attribute).permit(:name, :objective, :subjective, :description)
    end
end
