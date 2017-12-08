class NoStylesController < ApplicationController
  before_action :set_no_style, only: [:show, :edit, :update, :destroy]

  # GET /no_styles
  # GET /no_styles.json
  def index
    @no_styles = NoStyle.all
  end

  # GET /no_styles/1
  # GET /no_styles/1.json
  def show
  end

  # GET /no_styles/new
  def new
    @no_style = NoStyle.new
  end

  # GET /no_styles/1/edit
  def edit
  end

  # POST /no_styles
  # POST /no_styles.json
  def create
    @no_style = NoStyle.new(no_style_params)

    respond_to do |format|
      if @no_style.save
        format.html { redirect_to @no_style, notice: 'No style was successfully created.' }
        format.json { render :show, status: :created, location: @no_style }
      else
        format.html { render :new }
        format.json { render json: @no_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_styles/1
  # PATCH/PUT /no_styles/1.json
  def update
    respond_to do |format|
      if @no_style.update(no_style_params)
        format.html { redirect_to @no_style, notice: 'No style was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_style }
      else
        format.html { render :edit }
        format.json { render json: @no_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_styles/1
  # DELETE /no_styles/1.json
  def destroy
    @no_style.destroy
    respond_to do |format|
      format.html { redirect_to no_styles_url, notice: 'No style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_style
      @no_style = NoStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_style_params
      params.require(:no_style).permit(:title, :body)
    end
end
