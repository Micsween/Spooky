// Auto-generated stubs for each available event.

function move_to_intro()
{
	with(obj_order_manager){
		alarm[NPC_INTRO_DIALOGUE_ALARM] = 10
	}
	layer_sequence_pause(self.elementID)
}



function move_on_to_next_npc()
{
	with(obj_order_manager) {
		alarm[LOAD_NEW_NPC_ALARM] = 10
	}
}	