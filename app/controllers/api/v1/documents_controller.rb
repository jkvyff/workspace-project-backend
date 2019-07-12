class Api::V1::DocumentsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create ]
  
  def index
    documents = Document.all
    render json: documents
  end

  def show
  	document = Document.find(params[:id])
  	render json: document
  end

  def create
    document = Document.create(document_params)
    redirect_to document_path
  end

  private

  def document_params
    params.require(:document).permit(:extension, :content)
  end
end