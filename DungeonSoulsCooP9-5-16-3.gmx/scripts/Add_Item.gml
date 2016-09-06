/*
    Returns true if successfully added.
*/

var result=true;
if other.item_type[other.item_num] == "consumable"
{
    result=Add_Consumable();
}else
if other.item_type[other.item_num] == "passive"
{
    if ds_list_find_index(global.list,other.sprite_index)==-1 
    {
        ds_list_add(global.list,other.sprite_index);
        ds_list_add(global.list_ind,other.item_num);
        ds_list_add(global.list_name,other.item_name[other.item_num]);
        ds_list_add(global.list_desc,other.item_desc[other.item_num]);
        ds_list_add(global.list_stacks,other.item_stack[other.item_num]);
        ds_list_add(global.list_color,other.item_color[other.item_num]);
        ds_list_add(global.list_object,other.item_object[other.item_num]);
        ds_list_add(global.list_num,1);
    }
    else
    {
        result=false;
        if (other.item_stack[other.item_num]>0)
        {
            if (Item_Value(other.sprite_index)<other.item_stack[other.item_num])
            {
                ds_list_replace(global.list_num,
                ds_list_find_index(global.list,other.sprite_index),
                ds_list_find_value(global.list_num,ds_list_find_index(global.list,other.sprite_index))+1)
                
                ds_list_replace(global.list_desc,
                ds_list_find_index(global.list,other.sprite_index),
                other.item_desc[other.item_num])
                result=true;
            }
        }
        else
        {
            ds_list_replace(global.list_num,
            ds_list_find_index(global.list,other.sprite_index),
            ds_list_find_value(global.list_num,ds_list_find_index(global.list,other.sprite_index))+1)
            
            ds_list_replace(global.list_desc,
            ds_list_find_index(global.list,other.sprite_index),
            other.item_desc[other.item_num])
            result=true;
        }
    }
    with obj_Item
        Item_Init();
}
else if other.item_type[other.item_num] == "active"
{
    Add_Active();
}
return result;
