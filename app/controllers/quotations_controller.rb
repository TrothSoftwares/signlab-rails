class QuotationsController < ApplicationController
  before_action :set_quotation, only: [:show, :update, :destroy]

  # GET /quotations
  def index
    @quotations = Quotation.all

    render json: @quotations
  end

  # GET /quotations/1
  def show
    render json: @quotation
  end

  # POST /quotations
  def create
    @quotation = Quotation.new(quotation_params)

    if @quotation.save
      render json: @quotation, status: :created, location: @quotation
    else
      render json: @quotation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quotations/1
  def update
    if @quotation.update(quotation_params)
      render json: @quotation
    else
      render json: @quotation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotations/1
  def destroy
    @quotation.destroy
  end



  def quotation_report



    require 'docx'


doc = Docx::Document.open("#{Rails.root}/lib/docx_templates/sampledoc.docx")


doc.bookmarks['example_bookmark'].insert_text_after("Hello world.")


doc.save("#{Rails.root}/lib/docx_templates/edited.docx")



  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation
      @quotation = Quotation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quotation_params
      params[:quotation].permit!
    end
end
