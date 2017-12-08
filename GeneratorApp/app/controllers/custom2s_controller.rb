class Custom2sController < ApplicationController
  before_action :set_custom2, only: [:show, :edit, :update, :destroy]

  # GET /custom2s
  # GET /custom2s.json
  def index
    @custom2s = Custom2.all
  end

  # GET /custom2s/1
  # GET /custom2s/1.json
  def show
  end

  # GET /custom2s/new
  def new
    @custom2 = Custom2.new
  end

  # GET /custom2s/1/edit
  def edit
  end

  # POST /custom2s
  # POST /custom2s.json
  def create
    @custom2 = Custom2.new(custom2_params)

    respond_to do |format|
      if @custom2.save
        format.html { redirect_to @custom2, notice: 'Custom2 was successfully created.' }
        format.json { render :show, status: :created, location: @custom2 }
      else
        format.html { render :new }
        format.json { render json: @custom2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom2s/1
  # PATCH/PUT /custom2s/1.json
  def update
    respond_to do |format|
      if @custom2.update(custom2_params)
        format.html { redirect_to @custom2, notice: 'Custom2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom2 }
      else
        format.html { render :edit }
        format.json { render json: @custom2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom2s/1
  # DELETE /custom2s/1.json
  def destroy
    @custom2.destroy
    respond_to do |format|
      format.html { redirect_to custom2s_url, notice: 'Custom2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom2
      @custom2 = Custom2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom2_params
      params.require(:custom2).permit(:title, :description)
    end
end
