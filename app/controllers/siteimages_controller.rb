class SiteimagesController < ApplicationController
  before_action :set_siteimage, only: [:show, :update, :destroy]

  # GET /siteimages
  def index
    @siteimages = Siteimage.all

    render json: @siteimages
  end

  # GET /siteimages/1
  def show
    render json: @siteimage
  end

  # POST /siteimages
  def create
    @siteimage = Siteimage.new(siteimage_params)

    if @siteimage.save
      render json: @siteimage, status: :created, location: @siteimage
    else
      render json: @siteimage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /siteimages/1
  def update
    if @siteimage.update(siteimage_params)
      render json: @siteimage
    else
      render json: @siteimage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /siteimages/1
  def destroy
    @siteimage.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siteimage
      @siteimage = Siteimage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def siteimage_params
      logger.info params
      params[:siteimage].permit!
    end
end
