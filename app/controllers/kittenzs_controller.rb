class KittenzsController < ApplicationController
  before_action :set_kittenz, only: [:show, :edit, :update, :destroy]

  # GET /kittenzs
  # GET /kittenzs.json
  def index
    @kittenzs = Kittenz.all
  end

  # GET /kittenzs/1
  # GET /kittenzs/1.json
  def show
  end

  # GET /kittenzs/new
  def new
    @kittenz = Kittenz.new
  end

  # GET /kittenzs/1/edit
  def edit
  end

  # POST /kittenzs
  # POST /kittenzs.json
  def create
    @kittenz = Kittenz.new(kittenz_params)

    respond_to do |format|
      if @kittenz.save
        format.html { redirect_to @kittenz, notice: 'Kittenz was successfully created.' }
        format.json { render :show, status: :created, location: @kittenz }
      else
        format.html { render :new }
        format.json { render json: @kittenz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kittenzs/1
  # PATCH/PUT /kittenzs/1.json
  def update
    respond_to do |format|
      if @kittenz.update(kittenz_params)
        format.html { redirect_to @kittenz, notice: 'Kittenz was successfully updated.' }
        format.json { render :show, status: :ok, location: @kittenz }
      else
        format.html { render :edit }
        format.json { render json: @kittenz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kittenzs/1
  # DELETE /kittenzs/1.json
  def destroy
    @kittenz.destroy
    respond_to do |format|
      format.html { redirect_to kittenzs_url, notice: 'Kittenz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kittenz
      @kittenz = Kittenz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kittenz_params
      params.require(:kittenz).permit(:name, :description, :picture)
    end
end
