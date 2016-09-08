///create_lined_afterimages(game_ticks,sprite_index,iterations,startx,starty,endx,endy)
gml_pragma("forceinline");
ob = instance_create(x,y,obj_Brawler_Line);
ob.vanish_timer=argument0;
ob.target_sprite=argument1;
ob.iterations=argument2;
ob.startx=argument3;
ob.starty=argument4;
ob.endx=argument5;
ob.endy=argument6;
