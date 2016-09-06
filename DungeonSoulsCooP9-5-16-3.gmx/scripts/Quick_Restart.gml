gml_pragma("forceinline");
ds_list_destroy(global.list);
ds_list_destroy(global.list_ind);
ds_list_destroy(global.list_name);
ds_list_destroy(global.list_desc);
ds_list_destroy(global.list_color);
ds_list_destroy(global.list_object);
ds_list_destroy(global.list_num);    

//
global.list = ds_list_create();
global.list_ind = ds_list_create();
global.list_name = ds_list_create();
global.list_desc = ds_list_create();
global.list_color = ds_list_create();
global.list_object = ds_list_create();
global.list_num = ds_list_create();

instance_activate_all();
with obj_Lantern instance_destroy();
with obj_HUD instance_destroy();        
with obj_Hero instance_destroy();
global.dungeon = 0;
global.boss_rm = 0;
global.dungeon_level=0;
global.dungeon_name = ENVIRO4;
global.loop = 1;    
Change_Level("Normal");
with (surface_debris) {
    instance_destroy();
}
instance_create(x,y,obj_FadeOut);
global.pause = false;
if global.choiceb == 0 
{
    var last = global.choice;
    Char_Stats();
    global.choice = Random(0,maxchar);
    while(unlocked[global.choice] == false or global.choice == last)
        global.choice = Random(0,maxchar);
}

audio_resume_all();    
room_restart();
