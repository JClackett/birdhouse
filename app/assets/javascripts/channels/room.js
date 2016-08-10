App.room = App.cable.subscriptions.create({
	channel:'RoomChannel',
   	room: window.location.pathname.split("/")[2]
	}, {
	connected: function() {

	},

	disconnected: function() {

	},

	received: function(data) {
		$('#messages').append(data.message);
		document.querySelector('#message_content').value= "";
	},
});


