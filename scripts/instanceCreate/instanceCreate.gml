function instanceCreate() {
	if argument_count == 0 {
		show_error("Wrong number of arguments (0), must provide at least 1", true);
	}

	///@param object
	var object = argument[0];

	///@param X
	var X = 0;
	if argument_count > 1 {var X = argument[1];}

	///@param Y
	var Y = 0;
	if argument_count > 2 {var Y = argument[2];}

	///@param layer
	var Layer = "Instances";
	if argument_count > 3 {Layer = argument[3];}

	///@Return
	return instance_create_layer(X, Y, Layer, object);


}
