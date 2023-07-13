//Stat
mp = 500;
max_mp = 1000;
regen = 0;
atk = 100;
manabar_width = 400;
manabar_heigh = 8;
manabar_x = 1280/2 - manabar_width/2;
manabar_y = ystart+110;
flash = 0;


//Physic
x_speed = 0;
y_speed = 0;
grv = 0.4;
move_speed = 6;
firing_delay = 0;
global_time = 1;

//jumping
jump_speed = -5;
jump_max = 2;
jump_count = 0;
jump_hold = 15;
jump_timer = 0;

//Status
facing = "right";
state = "ready";

//Spell
recent_spell = "";
spell_queue = ["","","","",""];
spell_count=0;
casting_delay=0

//Colli
layer_id = layer_get_id("GrassLand");
tiles = layer_tilemap_get_id(layer_id);