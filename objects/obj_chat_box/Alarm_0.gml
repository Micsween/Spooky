if (is_callable(on_complete) ){
		callback = on_complete;
		on_complete = undefined;
		callback();
	}
	
instance_destroy();