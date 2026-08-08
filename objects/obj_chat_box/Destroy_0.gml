global.chatting = false
if is_callable(on_complete) {
	var function_to_call = on_complete
	function_to_call()
	on_complete = noone
}

//if the obj order manager is there, and you're not finished with todays orders
//than you were talking to an npc
//and the order manager needs to move on
