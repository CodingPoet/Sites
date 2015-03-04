class IdeaNamesController < ApplicationController
  before_action :set_idea_name, only: [:show, :edit, :update, :destroy]

  # GET /idea_names
  # GET /idea_names.json
  def index
    @idea_names = IdeaName.all
  end

  # GET /idea_names/1
  # GET /idea_names/1.json
  def show
  end

  # GET /idea_names/new
  def new
    @idea_name = IdeaName.new
  end

  # GET /idea_names/1/edit
  def edit
  end

  # POST /idea_names
  # POST /idea_names.json
  def create
    @idea_name = IdeaName.new(idea_name_params)

    respond_to do |format|
      if @idea_name.save
        format.html { redirect_to @idea_name, notice: 'Idea name was successfully created.' }
        format.json { render :show, status: :created, location: @idea_name }
      else
        format.html { render :new }
        format.json { render json: @idea_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea_names/1
  # PATCH/PUT /idea_names/1.json
  def update
    respond_to do |format|
      if @idea_name.update(idea_name_params)
        format.html { redirect_to @idea_name, notice: 'Idea name was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea_name }
      else
        format.html { render :edit }
        format.json { render json: @idea_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea_names/1
  # DELETE /idea_names/1.json
  def destroy
    @idea_name.destroy
    respond_to do |format|
      format.html { redirect_to idea_names_url, notice: 'Idea name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea_name
      @idea_name = IdeaName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea_name_params
      params.require(:idea_name).permit(:name, :description, :picture)
    end
end
