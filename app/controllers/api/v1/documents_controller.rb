class Api::V1::DocumentsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show ]
  
  def index
    documents = Document.all
    render json: documents
  end

  def show
  	document = Document.find(params[:id])
  	render json: document
  end

  private

  def document_params
    params.require(:document).permit(:extension, :content)
  end
end