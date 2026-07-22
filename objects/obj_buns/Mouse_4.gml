if(global.chatting){
	return
}
	
if (global.item_held == spr_hot_dog) {
	grab_item(spr_hot_dog_and_bun, sound);	
} else {
	interact(item_sprite, sound)
}
