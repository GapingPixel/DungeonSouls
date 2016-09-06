///quicksave(filename)
var filename = argument0;
ini_open(filename);
ini_write_string("DATA","KEY",ds_map_write(global.keys));
ini_write_string("DATA","CKEYS",ds_map_write(global.ckeys));
ini_write_string("DATA","LIST",ds_list_write(global.list ));
ini_write_string("DATA","LIST_IND",ds_list_write(global.list_ind ));
ini_write_string("DATA","LIST_NAME",ds_list_write(global.list_name ));
ini_write_string("DATA","LIST_DESC",ds_list_write(global.list_desc ));
ini_write_string("DATA","LIST_COLOR",ds_list_write(global.list_color ));
ini_write_string("DATA","LIST_OBJECT",ds_list_write(global.list_object ));
ini_write_string("DATA","LIST_NUM",ds_list_write(global.list_num ));
ini_write_string("DATA","LIST_STACKS",ds_list_write(global.list_stacks ));
ini_write_string("DATA","ITEM_ACT",ds_list_write(global.item_act ));
ini_write_string("DATA","ITEM_ACT_NAME",ds_list_write(global.item_act_name ));
ini_write_string("DATA","ITEM_ACT_DESC",ds_list_write(global.item_act_desc ));
ini_write_string("DATA","ITEM_ACT_OBJECT",ds_list_write(global.item_act_object ));
ini_write_string("DATA","POTIONA",ds_list_write(global.potionA ));
ini_write_string("DATA","POTION_NAMEA",ds_list_write(global.potion_nameA ));
ini_write_string("DATA","POTION_DESCA",ds_list_write(global.potion_descA ));
ini_write_string("DATA","POTION_OBJECTA",ds_list_write(global.potion_objectA ));
ini_write_string("DATA","POTIONB",ds_list_write(global.potionB ));
ini_write_string("DATA","POTION_NAMEB",ds_list_write(global.potion_nameB ));
ini_write_string("DATA","POTION_DESCB",ds_list_write(global.potion_descB ));
ini_write_string("DATA","POTION_OBJECTB",ds_list_write(global.potion_objectB ));
ini_write_string("DATA","POTIONC",ds_list_write(global.potionC ));
ini_write_string("DATA","POTION_NAMEC",ds_list_write(global.potion_nameC ));
ini_write_string("DATA","POTION_DESCC",ds_list_write(global.potion_descC ));
ini_write_string("DATA","POTION_OBJECTC",ds_list_write(global.potion_objectC ));
if (instance_exists(obj_Message_System))
{
    ini_write_string("DATA","MESSAGE_SYSTEM",ds_queue_write(obj_Message_System.message_queue));
}
ini_close();
game_save("quick.dsb");
