class ChaptertitlesController < ApplicationController
  before_action :set_chaptertitle, only: [:show, :edit, :update, :destroy]

  # GET /chaptertitles
  # GET /chaptertitles.json
  def index
    @chaptertitles = Chaptertitle.all
  end

  # GET /chaptertitles/1
  # GET /chaptertitles/1.json
  def show
  end

  # GET /chaptertitles/new
  def new
    @chaptertitle = Chaptertitle.new
  end

  # GET /chaptertitles/1/edit
  def edit
  end

  # POST /chaptertitles
  # POST /chaptertitles.json
  def create
    @chaptertitle = Chaptertitle.new(chaptertitle_params)

    respond_to do |format|
      if @chaptertitle.save
        format.html { redirect_to @chaptertitle, notice: 'Chaptertitle was successfully created.' }
        format.json { render :show, status: :created, location: @chaptertitle }
      else
        format.html { render :new }
        format.json { render json: @chaptertitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chaptertitles/1
  # PATCH/PUT /chaptertitles/1.json
  def update
    respond_to do |format|
      if @chaptertitle.update(chaptertitle_params)
        format.html { redirect_to @chaptertitle, notice: 'Chaptertitle was successfully updated.' }
        format.json { render :show, status: :ok, location: @chaptertitle }
      else
        format.html { render :edit }
        format.json { render json: @chaptertitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chaptertitles/1
  # DELETE /chaptertitles/1.json
  def destroy
    @chaptertitle.destroy
    respond_to do |format|
      format.html { redirect_to chaptertitles_url, notice: 'Chaptertitle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chaptertitle
      @chaptertitle = Chaptertitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chaptertitle_params
      params.require(:chaptertitle).permit(:content)
    end
end
