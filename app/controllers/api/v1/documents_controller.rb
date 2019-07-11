class Api::V1::DocumentsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create]
  
  def index
    documents = Document.all
    render json: documents
  end

  def show
  	document = Document.find(params[:id])
  	render json: document
  end

  def create
    document = Document.new(document_params)
    if document.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        DocumentSerializer.new(document)
      ).serializable_hash
      ActionCable.server.broadcast 'documents_channel', serialized_data
      head :ok
    end
  end

  private

  def document_params
    params.require(:document).permit(:extension, :content)
  end
end