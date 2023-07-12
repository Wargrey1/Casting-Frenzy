//movement
var _key_left = keyboard_check(ord("A"));
var _key_right =  keyboard_check(ord("D"));
var _key_jump = keyboard_check_pressed(ord("W"));
var _key_jump_hold = keyboard_check(ord("W"))
var _move = _key_right - _key_left;

//adjust speed
x_speed = _move * move_speed;
y_speed += grv;
	
//reset jump count
if place_meeting(x,y+1,O_Barrier)
{
	jump_count=0;
}
else {if jump_count == 0 {jump_count = 1;}}

if place_meeting(x,y+y_speed,O_Barrier) y_speed = 0;
//count jump
if _key_jump && jump_count < jump_max
{
	if jump_count == 1 instance_create_layer(x,y+3,"Aura",O_Jump_Effect);
	jump_count++;
	jump_timer = jump_hold;
}

//jump hold
if !_key_jump_hold {jump_timer = 0;}

//adjust timer
if jump_timer > 0
{
	y_speed = jump_speed;
	jump_timer--;
}

//colli ground
if (place_meeting(x+x_speed,y,O_Barrier)) 
{
	while (!place_meeting(x+sign(x_speed),y,O_Barrier))
	x += sign(x_speed);
	x_speed = 0;
}

//adjust cord
x += x_speed;
y += y_speed;


//check facing
if _key_jump || _key_left || _key_right
{
	if mouse_x > O_Player.x
	sprite_index = S_Player_Walk_Right;
	else
	sprite_index = S_Player_Walk_Left;
}
else
{
	if mouse_x > O_Player.x
	sprite_index = S_Player_Idle_Right;
	else 
	sprite_index = S_Player_Idle_Left;
}

//shooting
firing_delay = firing_delay - 1;
if (mouse_check_button(mb_left)) && (firing_delay < 0)
{	
	firing_delay = 90;
	with(instance_create_layer(x,y,"Bullets",O_Magic_Bullet))
	{
		speed = 4;
		direction = point_direction(x,y,mouse_x,mouse_y);
		image_angle = direction; 
	}
}