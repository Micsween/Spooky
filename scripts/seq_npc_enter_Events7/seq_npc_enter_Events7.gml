// Auto-generated stubs for each available event.

function update_state()
{
	layer_sequence_pause(self.elementID)
	with(obj_day_manager){
		current_state = NPC_STATE.INTRO_DIALOGUE
		waiting = false;
	}
}