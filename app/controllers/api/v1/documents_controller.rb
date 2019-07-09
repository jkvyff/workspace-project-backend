class Api::V1::DocumentsController < ApplicationController

  def create
    @document = Document.create(document_params)
    
    render json: { document: DocumentSerializer.new(@document) }, status: :created
  end

  private

  def document_params
    params.require(:document).permit(:extension, :content)
  end
end