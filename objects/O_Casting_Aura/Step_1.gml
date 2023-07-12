x = O_Player.x;
y = O_Player.y;
image_angle += 3;

if O_Player.spell_count > stage
{
	image_xscale += 0.15 * stage;
	image_yscale += 0.15 * stage;
	stage++;
}