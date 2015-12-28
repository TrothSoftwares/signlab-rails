class DesignimagesController < ApplicationController
  before_action :set_designimage, only: [:show, :update, :destroy]

  # GET /designimages
  def index
    @designimages = Designimage.all

    render json: @designimages
  end

  # GET /designimages/1
  def show
    render json: @designimage
  end

  # POST /designimages
  def create
    @designimage = Designimage.new(designimage_params)

    if @designimage.save
      render json: @designimage, status: :created, location: @designimage
    else
      render json: @designimage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /designimages/1
  def update
    if @designimage.update(designimage_params)
      render json: @designimage
    else
      render json: @designimage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /designimages/1
  def destroy
    @designimage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designimage
      @designimage = Designimage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # FIXME: ALL PERMITTED PARAMS SHOULD BE FIXED
    def designimage_params
      params[:designimage].permit!
    end
end
