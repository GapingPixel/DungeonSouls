gml_pragma("forceinline");
draw_set_blend_mode(bm_add)
if ds_list_find_index(global.list,spr_Sword_of_Ice) != -1
    draw_sprite_ext(spr_AuraB,0,x,y+8,1,1,buff_angle,c_aqua,0.5);
if status == "regen" 
    draw_sprite_ext(spr_AuraB,1,x,y+8,1,1,buff_angle,c_lime,0.5);
draw_set_blend_mode(bm_normal)
