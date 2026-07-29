//play garbage pick up sound
// change hand sprite to be a trash bag
// can you put it back? why would I be able to do that
// no, because if you could id have to create separate sprite ids for the indor and outdoor trashcans
if global.item_held == noone {
	audio_play_sound(snd_complete_order, 100, false)
	global.item_held = spr_trash_bag
}else if global.item_held != spr_trash_bag {
	trash_item(snd_garbage_use)
}
