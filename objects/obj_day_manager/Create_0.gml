enum DAY_STATE {
	BEGIN_DAY,
	TAKING_ORDERS,
	TAKING_OUT_TRASH,
	TURNING_OFF_GENERATOR,
	END_DAY,
	TRANSITION_TO_NEXT_DAY
}
waiting = false
current_state = DAY_STATE.BEGIN_DAY

//day state:
// begin day: intro dialogue, spooky events, adding a longer delay before your first customer arrives,
//also gives me room to decide if I want to add a tutorial or stocking.
// taking_orders: lets me add spooky stuff between customers
// taking_out_trash: lets me add spooky stuff outside
//officially night
// turning off generator: lets me add spooky generator stuff
// end day also more spooky stuff and an opportunity to reset

//game_state
// these are for controlling spooky events.
// DAY1: 
// NIGHT1: distant gunshots. 
// DAY2:
// NIGHT2:
// DAY3:
// NIGHT3: