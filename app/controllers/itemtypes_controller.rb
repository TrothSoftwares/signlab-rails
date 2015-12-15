class ItemtypesController < ApplicationController
  before_action :set_itemtype, only: [:show, :update, :destroy]

  # GET /itemtypes
  def index
    @itemtypes = Itemtype.all

    render json: @itemtypes
  end

  # GET /itemtypes/1
  def show
    render json: @itemtype
  end

  # POST /itemtypes
  def create
    @itemtype = Itemtype.new(itemtype_params)

    if @itemtype.save
      render json: @itemtype, status: :created, location: @itemtype
    else
      render json: @itemtype.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /itemtypes/1
  def update
    if @itemtype.update(itemtype_params)
      render json: @itemtype
    else
      render json: @itemtype.errors, status: :unprocessable_entity
    end
  end

  # DELETE /itemtypes/1
  def destroy
    @itemtype.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemtype
      @itemtype = Itemtype.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def itemtype_params
      params[:itemtype].permit!
    end
end
