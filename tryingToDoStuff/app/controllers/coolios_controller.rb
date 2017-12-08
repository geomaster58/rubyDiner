class CooliosController < ApplicationController
  before_action :set_coolio, only: [:show, :edit, :update, :destroy]

  # GET /coolios
  # GET /coolios.json
  def index
    @coolios = Coolio.all
  end

  # GET /coolios/1
  # GET /coolios/1.json
  def show
  end

  # GET /coolios/new
  def new
    @coolio = Coolio.new
  end

  # GET /coolios/1/edit
  def edit
  end

  # POST /coolios
  # POST /coolios.json
  def create
    @coolio = Coolio.new(coolio_params)

    respond_to do |format|
      if @coolio.save
        format.html { redirect_to @coolio, notice: 'Coolio was successfully created.' }
        format.json { render :show, status: :created, location: @coolio }
      else
        format.html { render :new }
        format.json { render json: @coolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coolios/1
  # PATCH/PUT /coolios/1.json
  def update
    respond_to do |format|
      if @coolio.update(coolio_params)
        format.html { redirect_to @coolio, notice: 'Coolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @coolio }
      else
        format.html { render :edit }
        format.json { render json: @coolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coolios/1
  # DELETE /coolios/1.json
  def destroy
    @coolio.destroy
    respond_to do |format|
      format.html { redirect_to coolios_url, notice: 'Coolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coolio
      @coolio = Coolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coolio_params
      params.require(:coolio).permit(:title, :body, :honest, :timeOfDay)
    end
end
