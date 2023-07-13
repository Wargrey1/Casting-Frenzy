draw_sprite(S_Mana_Bar,0,manabar_x,manabar_y);
draw_sprite_stretched(S_Mana_Bit,0,manabar_x,manabar_y,(mp/max_mp)*manabar_width,manabar_heigh);
draw_set_halign(fa_center);
draw_text(manabar_x + manabar_width/2, manabar_y-30,$"{mp}/{max_mp}");
