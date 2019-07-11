class DocumentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "documents_channel"
  end

  def unsubscribed
  end
end