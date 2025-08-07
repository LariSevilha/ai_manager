import consumer from "channels/consumer"

consumer.subscriptions.create("ProjectUpdatesChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  },

  update_project: function() {
    return this.perform('update_project');
  },

  update_task: function() {
    return this.perform('update_task');
  }
});
