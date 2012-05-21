onload = function() {
 // set up shell.
 var output = $('chat_data');
 // set up stomp client.
 stomp = new STOMPClient();
 stomp.onopen = function() {
 //output.insert({"top" : "Transport openned"});
};
stomp.onclose = function(code) {
	output.insert({"top" : "Transport closed (code: " + code + ")"});
};
stomp.onerror = function(error) {
	alert("onerror: " + error);
};
stomp.onerrorframe = function(frame) {
	alert("onerrorframe: " + frame.body);
};
stomp.onconnectedframe = function() {
	output.insert({"top" : "Connected to chat room"});
};
stomp.onmessageframe = function(frame) {
	eval(frame.body);
 //output.insert({"top" : frame.body});
};
stomp.connect(document.domain, 61613, 'UNIQUE_ID_PER_CLIENT', '');
setTimeout("stomp.subscribe('CHANNEL_1', {exchange:''})",5000);
};
