import consumer from "./consumer"

const ChatRoomChannel = consumer.subscriptions.create("ChatRoomChannel", {
  connected(){
    console.log("------ connect")
  },

  disconnected(){

  },

  received(data){
    let username = window.Metadata.sessions.current_user_name;
    if (data.sent_by == username) {
      $('#messages').append('<p class="msg sent"> ' + data.message + ' <span class="sender"> ' + data.sent_by + ' </span></p>')  
    }else {
      $('#messages').append('<p class="msg received"><span class="sender"> ' + data.sent_by + ' </span> ' + data.message + ' </p>')

    }
  },

  speak(message){
    let username = window.Metadata.sessions.current_user_name;
    this.perform('speak', { message: message, name: username})
  }
});

export default ChatRoomChannel;
