

function move_to_intro()
{
	set_state_intro_dialogue()
	layer_sequence_pause(self.elementID)
}



function move_on_to_next_npc()
{
	set_state_load_new_npc()
}	