class ChatRoomChannel < ApplicationCable::Channel

  def subscribed
    stream_from 'chat_room_channel'
  end

  def speak(data)
    ActionCable.server.broadcast "chat_room_channel", message: data["message"], sent_by: data["name"]
  end
end
