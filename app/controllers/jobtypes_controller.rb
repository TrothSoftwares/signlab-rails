class JobtypesController < ApplicationController
  before_action :set_jobtype, only: [:show, :update, :destroy]

  # GET /jobtypes
  def index
    @jobtypes = Jobtype.all

    render json: @jobtypes
  end

  # GET /jobtypes/1
  def show
    render json: @jobtype
  end

  # POST /jobtypes
  def create
    @jobtype = Jobtype.new(jobtype_params)

    if @jobtype.save
      render json: @jobtype, status: :created, location: @jobtype
    else
      render json: @jobtype.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobtypes/1
  def update
    if @jobtype.update(jobtype_params)
      render json: @jobtype
    else
      render json: @jobtype.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobtypes/1
  def destroy
    @jobtype.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobtype
      @jobtype = Jobtype.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def jobtype_params
      params[:jobtype].permit!
      # FIXME: FIX ALL PERMITTED PARAMETERS TO ALLOW ONLY WHITELIST
    end
end
