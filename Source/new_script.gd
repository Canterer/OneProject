extends Node

func _ready() -> void:
	var client = StreamPeerTCP.new()
	client.connect_to_host("127.0.0.1", 8001)
	print("client_tcp _ready")
	if client.get_status() == StreamPeerTCP.Status.STATUS_CONNECTED:
		client.put_string("hallo server")
	else:
		print("client connect error!!",client.get_status())
