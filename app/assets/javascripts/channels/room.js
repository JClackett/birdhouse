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
		$('#messages').animate({scrollTop: $('#messages').prop("scrollHeight")}, 500);
	},
});


$(document).ready(function() {
	// Scoll to bottom of message pane on page load
	$('#messages').animate({scrollTop: $('#messages').prop("scrollHeight")}, 500);

	// Checks if there was a mesage and if so, clears the field, then scrolls to bottom
	$('#new_message').on ('submit', function(){
		event.preventDefault();
		// make sure there is content
		if ($('#new_message [name="message[content]"]').val() === ""){
			return false;
		}

		$.ajax({
			url: this.action,
			data: $(this).serialize(),
			method: "post"
		}).done( function(res){
			// reset user input to empty
			$('#new_message [name="message[content]"]').val("");
		});

		$('#messages').animate({scrollTop: $('#messages').prop("scrollHeight")}, 500);
	});

});