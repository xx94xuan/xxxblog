import ChatRoomChannel from './chat_room_channel';

$(document).on('turbolinks:load', function(){

  $('form#send_messages').on('submit', function(e){
    e.preventDefault();
    let message = $('#message').val();
    if (message.length > 0){
      ChatRoomChannel.speak(message);
      $('#message').val('')
    };
  });
});
