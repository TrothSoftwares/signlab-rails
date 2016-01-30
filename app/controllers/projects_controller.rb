class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /projects




  def index
    @projects = Project.all
    itemchanges = Array.new
    @projects.each do|project|
      project.items.each do |item|
        item.versions.each do |v|
           itemchanges<<[v.changeset]

        end
        end
      end


      render json: @projects, itemchanges: itemchanges
    end


def message
  "ddddd"
end

  # GET /projects/1
  def show

    render json: @project
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update

    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      #logger.info params.inspect
      #params.require(:data).require(:attributes).permit!
      params[:project].permit!
    end
end
