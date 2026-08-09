if not global.chatting and not global.obtained_id_badge {
	audio_play_sound(snd_chips_bag, 100, false)
	global.obtained_id_badge = true
	create_textbox(["P: An ID badge? Like the one Doctor Grace was wearing...",
	"P: 'Doctor Shapiro...'"], function(){
			visible = false
			create_textbox(["P: I'll hold onto it and decide what to do with it in the morning.","P: Now, I want to head home."])
			alarm[0] = 300
		})
	

	
}
