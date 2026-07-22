switch(current_state){
	case DAY_STATE.BEGIN_DAY:
		break
	case DAY_STATE.TAKING_ORDERS:
		break
	case DAY_STATE.TAKING_OUT_TRASH:
		break
	case DAY_STATE.TURNING_OFF_GENERATOR:
		break
	case DAY_STATE.END_DAY:
		global.current_game_day +=1;
		current_state = DAY_STATE.TRANSITION_TO_NEXT_DAY
		break
	case DAY_STATE.TRANSITION_TO_NEXT_DAY:
		if not waiting {
			waiting = true
			//play whatever transition we decide to use
			//	
		}
	
		break;
}
