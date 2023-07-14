//casting
if state = "casting"
{
	casting_delay--;
	if keyboard_lastchar != recent_spell && casting_delay < 0 && is_a_spell(keyboard_lastchar) && spell_count < 5
	{
		//replace recent
		recent_spell = keyboard_lastchar;
		spell_count++;
		//display letter
		casting_delay = 15;
		instance_create_layer(x,y-35,"Letter",O_Casting_Display);
		//add letter
		spell_queue[spell_count-1] = recent_spell;
	}
}