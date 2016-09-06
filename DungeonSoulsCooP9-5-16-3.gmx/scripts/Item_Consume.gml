///Item_Consume(spr Item)
var _item=ds_list_find_index(global.list,argument0);
var result=false;
if  _item!= -1
{
    ds_list_delete(global.list_ind,_item);
    ds_list_delete(global.list_name,_item);
    ds_list_delete(global.list_desc,_item);
    ds_list_delete(global.list_color,_item);
    ds_list_delete(global.list_object,_item);
    ds_list_delete(global.list_num,_item);
    ds_list_delete(global.list,_item);
    result = true;
}
return result;
