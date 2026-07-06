

npc = instance_create_layer(1344, 220, "Instances", obj_npc, {
	name: "Lu",
	chat_sprite: spr_chat_lu_talking,
	window_sprite: spr_window_lu,
	dialogues: []
		} )
npc.image_xscale = 2
npc.image_yscale = 2
npc.sprite_index = spr_window_lu

with(obj_npc) {
show_debug_message("NPC Created!");
show_debug_message("Sprite: " + sprite_get_name(sprite_index));
show_debug_message("Position: " + string(x) + ", " + string(y));
show_debug_message("Scale: " + string(image_xscale) + "x" + string(image_yscale));
}




//name
//name
//chat_sprite
//wiindow_sprite
//dialogues