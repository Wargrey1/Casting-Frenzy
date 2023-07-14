var _i,_k, _num_img = sprite_get_number(S_Squar_Trans_Rev);
if trans
{
	for ( _i = 0 ; _i < 1280 div sprite_get_width(S_Squar_Trans_Rev); _i++)
	{
		for ( _k = 0 ; _k < 720 div sprite_get_height(S_Squar_Trans_Rev)+1; _k++)
		{
			var _sprite_sub = trans_sub_img-_i;
			if (_sprite_sub < 0) _sprite_sub =0;
			else if (_sprite_sub >_num_img-1) _sprite_sub = _num_img-1;
			draw_sprite(S_Squar_Trans_Rev,_sprite_sub,_i*64,_k*64);
		}
	}
	if (trans_sub_img < _num_img + 1280 / sprite_get_width(S_Squar_Trans_Rev))
	{
		trans_sub_img += trans_speed;
	}
	else trans = false;
}

if !trans instance_destroy();