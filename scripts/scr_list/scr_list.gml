function list_foreach(list, func){
	for(var i = 0; i < ds_list_size(list); i++){
		func(list[| i]);	
	}
}