

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


//game_state
// these are for controlling spooky events.
// DAY1: 
// NIGHT1: distant gunshots. 
// DAY2:
// NIGHT2:
// DAY3:
// NIGHT3: