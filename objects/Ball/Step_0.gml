/// @description Insert description here
speed = 0;
if (keyboard_check(direction_up) && !place_meeting(x, y - movement_speed, Wall)) {
	vspeed = -movement_speed;
}
if (keyboard_check(direction_down) && !place_meeting(x, y + movement_speed, Wall)) {
	vspeed = movement_speed;
}
if (keyboard_check(direction_right) && !place_meeting(x + movement_speed, y, Wall)) {
	hspeed = movement_speed;
}
if (keyboard_check(direction_left) && !place_meeting(x - movement_speed, y, Wall)) {
	hspeed = -movement_speed;
}
if (speed != 0) {
	speed = movement_speed;
}