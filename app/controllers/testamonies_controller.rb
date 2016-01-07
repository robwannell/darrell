class TestamoniesController < ApplicationController
  before_action :set_testamony, only: [:show, :edit, :update, :destroy]
 before_filter :authorize
  # GET /testamonies
  # GET /testamonies.json
  def index
    @testamonies = Testamony.all
  end

  # GET /testamonies/1
  # GET /testamonies/1.json
  def show
  end

  # GET /testamonies/new
  def new
    @testamony = Testamony.new
  end

  # GET /testamonies/1/edit
  def edit
  end

  # POST /testamonies
  # POST /testamonies.json
  def create
    @testamony = Testamony.new(testamony_params)

    respond_to do |format|
      if @testamony.save
        format.html { redirect_to testamonies_path, notice: 'Testamony was successfully created.' }
        format.json { render :show, status: :created, location: @testamony }
      else
        format.html { render :new }
        format.json { render json: @testamony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testamonies/1
  # PATCH/PUT /testamonies/1.json
  def update
    respond_to do |format|
      if @testamony.update(testamony_params)
        format.html { redirect_to testamonies_path, notice: 'Testamony was successfully updated.' }
        format.json { render :show, status: :ok, location: @testamony }
      else
        format.html { render :edit }
        format.json { render json: @testamony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testamonies/1
  # DELETE /testamonies/1.json
  def destroy
    @testamony.destroy
    respond_to do |format|
      format.html { redirect_to testamonies_url, notice: 'Testamony was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testamony
      @testamony = Testamony.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testamony_params
      params.require(:testamony).permit(:name, :quote, :title)
    end
end
