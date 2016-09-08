with obj_HUD
{
    ds_list_delete(global.list_ind,ds_list_find_index(global.list,drag_item_image));
    ds_list_delete(global.list_name,ds_list_find_index(global.list,drag_item_image));
    ds_list_delete(global.list_desc,ds_list_find_index(global.list,drag_item_image));
    ds_list_delete(global.list_color,ds_list_find_index(global.list,drag_item_image));
    ds_list_delete(global.list_object,ds_list_find_index(global.list,drag_item_image));
    ds_list_delete(global.list_num,ds_list_find_index(global.list,drag_item_image));
    ds_list_delete(global.list,ds_list_find_index(global.list,drag_item_image));
}
