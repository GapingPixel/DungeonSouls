if ds_list_size(global.item_act) > 0 //IF NOT EMPTY
{
    with instance_create(x,y,ds_list_find_value(global.item_act_object,0)) item_price = 0;
    ds_list_replace(global.item_act,0,other.sprite_index);
    ds_list_replace(global.item_act_name,0,other.item_name[other.item_num]);
    ds_list_replace(global.item_act_desc,0,other.item_desc[other.item_num]);
    ds_list_replace(global.item_act_object,0,other.item_object[other.item_num]);
}
else
{
    ds_list_add(global.item_act,other.sprite_index)
    ds_list_add(global.item_act_name,other.item_name[other.item_num])
    ds_list_add(global.item_act_desc,other.item_desc[other.item_num])        
    ds_list_add(global.item_act_object,other.item_object[other.item_num])
}
   
with obj_Item
    Item_Init();
