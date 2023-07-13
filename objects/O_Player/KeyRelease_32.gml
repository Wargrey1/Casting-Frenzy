if spell_count > 2
switch (spell_queue[0] + spell_queue[1] + spell_queue[2])
{
	case "IUK":
	{
		//summon spell level 1
		//else checking spell level 2
		if spell_count==3
		with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
		{
		speed = 5;
		direction = point_direction(x,y,mouse_x,mouse_y);
		image_angle = direction;
		}
		else
		{
			switch (spell_queue[3])
			{
				case "L":
				{
					//summon spell level 2
					//else check spell level 3
					if spell_count == 4
					with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
					{
						speed = 5;
						direction = point_direction(x,y,mouse_x,mouse_y);
						image_angle = direction;
					}
					else
					{
						switch (spell_queue[4])
						{
							case "J": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "O": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "P": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "T": 
							{//wrong spell
								break;}
							case "Y": 
							{//wrong spell
								break;}
							case "G": 
							{//wrong spell
								break;}
							case "H": 
							{//wrong spell
								break;}
						}
					}
					break;
				}
				case "O":
				{
					//summon spell level 2
					//else checking spell level 3
					if spell_count == 4
					with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
					{
						speed = 5;
						direction = point_direction(x,y,mouse_x,mouse_y);
						image_angle = direction;
					}
					else
					{
						switch (spell_queue[4])
						{
							case "H": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "Y": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "P": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "J": 
							{//wrong spell
								break;}
							case "L": 
							{//wrong spell
								break;}
							case "T": 
							{//wrong spell
								break;}
							case "G": 
							{//wrong spell
								break;}
						}
					}
					break;
				}
				case "J":
				{
					//summon spell level 2
					//else checking spell level 3
					if spell_count == 4
					with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
					{
						speed = 5;
						direction = point_direction(x,y,mouse_x,mouse_y);
						image_angle = direction;
					}
					else
					{
						switch (spell_queue[4])
						{
							case "H": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "Y": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "T": 
							{//summon spell level 3
								with(instance_create_layer(x,y,"Bullets",O_Skill_PlaceHolder))
								{
								speed = 5;
								direction = point_direction(x,y,mouse_x,mouse_y);
								image_angle = direction;
								}
								break;
							}
							case "O": 
							{//wrong spell
								break;}
							case "G": 
							{//wrong spell
								break;}
							case "L": 
							{//wrong spell
								break;}
							case "P": 
							{//wrong spell
								break;}
						}
					}
					break;
				}
				case "P":
				{//wrong spell
					break;
				}
				case "Y":
				{//wrong spell
					break;
				}
				case "H":
				{//wrong spell
					break;
				}
				case "T":
				{//wrong spell
					break;
				}
				case "G":
				{//wrong spell
					break;
				}
			}
		}	
		break;
	}
}



global_time= 1;
state = "finish";
spell_count = 0;