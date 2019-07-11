class DocumentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "documents_channel"
  end

  def unsubscribed
  end

  def receive(data)
    document = Document.find(data["id"])
    document.update!(content: data["content"])
    ActionCable.server.broadcast('documents_channel', data)
  end
end