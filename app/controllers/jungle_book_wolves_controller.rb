class JungleBookWolvesController < ApplicationController
  before_action :set_jungle_book_wolf, only: [:show, :edit, :update, :destroy]

  # GET /jungle_book_wolves
  # GET /jungle_book_wolves.json
  def index
    @jungle_book_wolves = JungleBookWolf.all
  end

  # GET /jungle_book_wolves/1
  # GET /jungle_book_wolves/1.json
  def show
  end

  # GET /jungle_book_wolves/new
  def new
    @jungle_book_wolf = JungleBookWolf.new
  end

  # GET /jungle_book_wolves/1/edit
  def edit
  end

  # POST /jungle_book_wolves
  # POST /jungle_book_wolves.json
  def create
    @jungle_book_wolf = JungleBookWolf.new(jungle_book_wolf_params)

    respond_to do |format|
      if @jungle_book_wolf.save
        format.html { redirect_to @jungle_book_wolf, notice: 'Jungle book wolf was successfully created.' }
        format.json { render :show, status: :created, location: @jungle_book_wolf }
      else
        format.html { render :new }
        format.json { render json: @jungle_book_wolf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jungle_book_wolves/1
  # PATCH/PUT /jungle_book_wolves/1.json
  def update
    respond_to do |format|
      if @jungle_book_wolf.update(jungle_book_wolf_params)
        format.html { redirect_to @jungle_book_wolf, notice: 'Jungle book wolf was successfully updated.' }
        format.json { render :show, status: :ok, location: @jungle_book_wolf }
      else
        format.html { render :edit }
        format.json { render json: @jungle_book_wolf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jungle_book_wolves/1
  # DELETE /jungle_book_wolves/1.json
  def destroy
    @jungle_book_wolf.destroy
    respond_to do |format|
      format.html { redirect_to jungle_book_wolves_url, notice: 'Jungle book wolf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jungle_book_wolf
      @jungle_book_wolf = JungleBookWolf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jungle_book_wolf_params
      params.require(:jungle_book_wolf).permit(:description)
    end
end
