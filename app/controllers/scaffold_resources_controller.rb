# frozen_string_literal: true

class ScaffoldResourcesController < ApplicationController
  before_action :set_scaffold_resource, only: %i[show edit update destroy]

  # GET /scaffold_resources or /scaffold_resources.json
  def index
    @scaffold_resources = ScaffoldResource.all
  end

  # GET /scaffold_resources/1 or /scaffold_resources/1.json
  def show; end

  # GET /scaffold_resources/new
  def new
    @scaffold_resource = ScaffoldResource.new
  end

  # GET /scaffold_resources/1/edit
  def edit; end

  # POST /scaffold_resources or /scaffold_resources.json
  def create
    @scaffold_resource = ScaffoldResource.new(scaffold_resource_params)

    respond_to do |format|
      if @scaffold_resource.save
        format.html do
          redirect_to scaffold_resource_url(@scaffold_resource), notice: 'Scaffold resource was successfully created.'
        end
        format.json { render :show, status: :created, location: @scaffold_resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scaffold_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffold_resources/1 or /scaffold_resources/1.json
  def update
    respond_to do |format|
      if @scaffold_resource.update(scaffold_resource_params)
        format.html do
          redirect_to scaffold_resource_url(@scaffold_resource), notice: 'Scaffold resource was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @scaffold_resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scaffold_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffold_resources/1 or /scaffold_resources/1.json
  def destroy
    @scaffold_resource.destroy

    respond_to do |format|
      format.html { redirect_to scaffold_resources_url, notice: 'Scaffold resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_scaffold_resource
    @scaffold_resource = ScaffoldResource.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def scaffold_resource_params
    params.require(:scaffold_resource).permit(:name, :description)
  end
end
