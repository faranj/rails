class FablesController < ApplicationController
  before_action :set_fable, only: %i[ show edit update destroy ]
  before_action :correct_fuser, only: [:edit, :update, :destroy]
  # GET /fables or /fables.json
  def index
    @fables = Fable.all
  end

  # GET /fables/1 or /fables/1.json
  def show
  end

  # GET /fables/new
  def new
    #@fable = Fable.new
    @fable=current_fuser.fable.build
  end

  # GET /fables/1/edit
  def edit
  end

  # POST /fables or /fables.json
  def create
    #@fable = Fable.new(fable_params)
@fable=current_fuser.fable.build(fable_params)
    respond_to do |format|
      if @fable.save
        format.html { redirect_to @fable, notice: "Fable was successfully created." }
        format.json { render :show, status: :created, location: @fable }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fables/1 or /fables/1.json
  def update
    respond_to do |format|
      if @fable.update(fable_params)
        format.html { redirect_to @fable, notice: "Fable was successfully updated." }
        format.json { render :show, status: :ok, location: @fable }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fables/1 or /fables/1.json
  def destroy
    @fable.destroy
    respond_to do |format|
      format.html { redirect_to fables_url, notice: "Fable was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  def correct_fuser
    @fable=current_fuser.fable.find_by(id: params[:id])
 redirect_to fables_path, notice: "Not Authorised to to modify" if @fables.nil?
  
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fable
      @fable = Fable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fable_params
      params.require(:fable).permit(:first_name, :last_name, :email, :phone, :twitter , :fuser_id)
    end
end
