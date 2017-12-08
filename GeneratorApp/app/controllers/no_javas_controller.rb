class NoJavasController < ApplicationController
  before_action :set_no_java, only: [:show, :edit, :update, :destroy]

  # GET /no_javas
  # GET /no_javas.json
  def index
    @no_javas = NoJava.all
  end

  # GET /no_javas/1
  # GET /no_javas/1.json
  def show
  end

  # GET /no_javas/new
  def new
    @no_java = NoJava.new
  end

  # GET /no_javas/1/edit
  def edit
  end

  # POST /no_javas
  # POST /no_javas.json
  def create
    @no_java = NoJava.new(no_java_params)

    respond_to do |format|
      if @no_java.save
        format.html { redirect_to @no_java, notice: 'No java was successfully created.' }
        format.json { render :show, status: :created, location: @no_java }
      else
        format.html { render :new }
        format.json { render json: @no_java.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_javas/1
  # PATCH/PUT /no_javas/1.json
  def update
    respond_to do |format|
      if @no_java.update(no_java_params)
        format.html { redirect_to @no_java, notice: 'No java was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_java }
      else
        format.html { render :edit }
        format.json { render json: @no_java.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_javas/1
  # DELETE /no_javas/1.json
  def destroy
    @no_java.destroy
    respond_to do |format|
      format.html { redirect_to no_javas_url, notice: 'No java was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_java
      @no_java = NoJava.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_java_params
      params.require(:no_java).permit(:title, :body)
    end
end
