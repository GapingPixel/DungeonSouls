//CAT'S PAW
gml_pragma("forceinline");
if ds_list_find_index(global.list,spr_Cat_Paw) != -1 and Test_Chance(50)
    with obj_Hero
    {
        expcur += (Item_Value(spr_Cat_Paw)+1)*10;
        Popup("+"+string((Item_Value(spr_Cat_Paw)+1)*10)+" exp",merge_colour(c_purple,c_white,0.4))           
    }
//FOOTFINGER
if ds_list_find_index(global.list,spr_Footfinger) != -1
{
    with obj_Hero
    {
        obj             = instance_create(x,y,obj_St_SpeedUp)
        obj.owner       = id;
        obj.pdamage     = 0;
        obj.sec         = 0;
        obj.alarm[1]    = 60*5;
    }
}
