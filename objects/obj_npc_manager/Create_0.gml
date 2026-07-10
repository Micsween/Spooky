npc_queue = [
	{
		name: "Lu",
		sequence: seq_window_lu,
		chat_sprite: spr_chat_lu_talking,
		intro_dialogue: ["Hey! I heard you were setting up shop out here.", "Can I get something to eat?"],
		intro_names: ["Lu", "Lu"],
		outro_dialogue: ["Thanks! That hit the spot.", "Good luck out here tonight."],
		outro_names: ["Lu", "Lu"]
	},
	{
		name: "Rody",
		sequence: seq_window_rody,
		chat_sprite: spr_chat_rody_talking,
		intro_dialogue: ["Yo! What's good?", "Let me get something real quick."],
		intro_names: ["Rody", "Rody"],
		outro_dialogue: ["Appreciate it, that was fire.", "I'll probably be back later."],
		outro_names: ["Rody", "Rody"]
	}
]

current_npc_index = 0
current_seq = noone
state = "idle"
intro_triggered = false

function start_next_npc() {
	if (current_npc_index >= array_length(npc_queue)) {
		state = "all_done"
		return
	}

	var _npc = npc_queue[current_npc_index]
	current_seq = layer_sequence_create("Sequences", 960, 165, _npc.sequence)
	intro_triggered = false
	state = "playing"
}

start_next_npc()
