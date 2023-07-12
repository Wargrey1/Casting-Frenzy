//Stat
max_hp = 1000
max_mp = 1000;
atk = 100;

//Physic
x_speed = 0;
y_speed = 0;
grv = 0.4;
move_speed = 6;
firing_delay = 0;

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