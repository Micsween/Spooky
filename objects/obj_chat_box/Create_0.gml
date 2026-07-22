dialogue_finished = false      
current_line = 0; 
current_char = 0;
max_width = 1000;
text_x = 300;
text_y = 500;


current_text = text[0]; // i dont think i need error handling here. if im missing text the game should crash LOL
//get the first letter of the line of text
// use that to set the  current_name. N = global.current_npc.name  P = "You"
// remove the section "N: " from the text	
function update_name() {
	first_char = string_copy(current_text, 0, 2);

	if (first_char == "N:") {
		current_text = string_delete(current_text, 0, 3);
		current_name  = global.current_npc.name
	} else if first_char == "P:" {
		current_text = string_delete(current_text, 0, 3);
		current_name = "You"
	}
	
}
update_name()