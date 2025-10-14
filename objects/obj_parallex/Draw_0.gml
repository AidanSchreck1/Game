/// @description animate background animation

//define the layers

var layer_id1 = layer_get_id("Backgrounds_1");
var layer_id2 = layer_get_id("Backgrounds_2");
var layer_id3 = layer_get_id("Backgrounds_3");
var layer_id4 = layer_get_id("Backgrounds_4");
var layer_id5 = layer_get_id("Backgrounds_5");
var layer_id6 = layer_get_id("Background");

//lerp

layer_x(layer_id1, lerp(0, camera_get_view_x(view_camera[0]), 0.1));
layer_x(layer_id2, lerp(0, camera_get_view_x(view_camera[0]), 0.1));
layer_x(layer_id3, lerp(0, camera_get_view_x(view_camera[0]), 0.3));
layer_x(layer_id4, lerp(0, camera_get_view_x(view_camera[0]), 0.6));
layer_x(layer_id5, lerp(0, camera_get_view_x(view_camera[0]), 0.65));
layer_x(layer_id6, lerp(0, camera_get_view_x(view_camera[0]), 0.8));


