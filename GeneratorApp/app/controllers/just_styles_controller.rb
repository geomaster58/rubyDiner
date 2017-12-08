class JustStylesController < ApplicationController
  before_action :set_just_style, only: [:show, :edit, :update, :destroy]

  # GET /just_styles
  # GET /just_styles.json
  def index
    @just_styles = JustStyle.all
  end

  # GET /just_styles/1
  # GET /just_styles/1.json
  def show
  end

  # GET /just_styles/new
  def new
    @just_style = JustStyle.new
  end

  # GET /just_styles/1/edit
  def edit
  end

  # POST /just_styles
  # POST /just_styles.json
  def create
    @just_style = JustStyle.new(just_style_params)

    respond_to do |format|
      if @just_style.save
        format.html { redirect_to @just_style, notice: 'Just style was successfully created.' }
        format.json { render :show, status: :created, location: @just_style }
      else
        format.html { render :new }
        format.json { render json: @just_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /just_styles/1
  # PATCH/PUT /just_styles/1.json
  def update
    respond_to do |format|
      if @just_style.update(just_style_params)
        format.html { redirect_to @just_style, notice: 'Just style was successfully updated.' }
        format.json { render :show, status: :ok, location: @just_style }
      else
        format.html { render :edit }
        format.json { render json: @just_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /just_styles/1
  # DELETE /just_styles/1.json
  def destroy
    @just_style.destroy
    respond_to do |format|
      format.html { redirect_to just_styles_url, notice: 'Just style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_just_style
      @just_style = JustStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def just_style_params
      params.require(:just_style).permit(:title, :body)
    end
end
