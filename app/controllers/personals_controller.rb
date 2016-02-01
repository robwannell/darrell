class PersonalsController < ApplicationController
  before_action :set_personal, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, except: [:show]
  # GET /personals
  # GET /personals.json
  def index
    @personals = Personal.rank(:row_order).all
    
  end
  
  def update_row_order
    @personal = Personal.find(personal_params[:personal_id])
    @personal.row_order_position = personal_params[:row_order_position]
    @personal.save

    render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end

  

  # GET /personals/1
  # GET /personals/1.json
  def show
    @personals = Personal.order("RAND()").first(5)
    @title = @personal.name
     @description = @personal.description
  end

  # GET /personals/new
  def new
    @personal = Personal.new
  end

  # GET /personals/1/edit
  def edit
  end

  # POST /personals
  # POST /personals.json
  def create
    @personal = Personal.new(personal_params)

    respond_to do |format|
      if @personal.save
        format.html { redirect_to personals_url, notice: 'Personal was successfully created.' }
        format.json { render :show, status: :created, location: @personal }
      else
        format.html { render :new }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personals/1
  # PATCH/PUT /personals/1.json
  def update
    respond_to do |format|
      if @personal.update(personal_params)
        format.html { redirect_to personals_url, notice: 'Personal was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal }
      else
        format.html { render :edit }
        format.json { render json: @personal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personals/1
  # DELETE /personals/1.json
  def destroy
    @personal.destroy
    respond_to do |format|
      format.html { redirect_to personals_url, notice: 'Personal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal
      @personal = Personal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_params
      params.require(:personal).permit(:personal_id, :title, :name, :position, :content, :description, :avatar, :row_order_position)
    end
end
