///@param viewCameraIndex
function getCameraY() {
	var viewCameraIndex = 0;
	if argument_count > 0 { viewCameraIndex = argument[0]; }

	return camera_get_view_y(view_camera[viewCameraIndex]);


}
