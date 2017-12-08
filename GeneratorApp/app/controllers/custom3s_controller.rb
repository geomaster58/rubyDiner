class Custom3sController < ApplicationController
  before_action :set_custom3, only: [:show, :edit, :update, :destroy]

  # GET /custom3s
  # GET /custom3s.json
  def index
    @custom3s = Custom3.all
  end

  # GET /custom3s/1
  # GET /custom3s/1.json
  def show
  end

  # GET /custom3s/new
  def new
    @custom3 = Custom3.new
  end

  # GET /custom3s/1/edit
  def edit
  end

  # POST /custom3s
  # POST /custom3s.json
  def create
    @custom3 = Custom3.new(custom3_params)

    respond_to do |format|
      if @custom3.save
        format.html { redirect_to @custom3, notice: 'Custom3 was successfully created.' }
        format.json { render :show, status: :created, location: @custom3 }
      else
        format.html { render :new }
        format.json { render json: @custom3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom3s/1
  # PATCH/PUT /custom3s/1.json
  def update
    respond_to do |format|
      if @custom3.update(custom3_params)
        format.html { redirect_to @custom3, notice: 'Custom3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom3 }
      else
        format.html { render :edit }
        format.json { render json: @custom3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom3s/1
  # DELETE /custom3s/1.json
  def destroy
    @custom3.destroy
    respond_to do |format|
      format.html { redirect_to custom3s_url, notice: 'Custom3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom3
      @custom3 = Custom3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom3_params
      params.require(:custom3).permit(:title, :description)
    end
end
