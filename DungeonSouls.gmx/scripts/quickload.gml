///quickload(filename)

game_load("quick.dsb");

global.list = ds_list_create();
global.list_ind = ds_list_create();
global.list_name = ds_list_create();
global.list_desc = ds_list_create();
global.list_color = ds_list_create();
global.list_object = ds_list_create();
global.list_num = ds_list_create();
global.list_stacks = ds_list_create();

global.item_act = ds_list_create();
global.item_act_name = ds_list_create();
global.item_act_desc = ds_list_create();
global.item_act_object = ds_list_create();

global.potionA = ds_list_create();
global.potion_nameA = ds_list_create();
global.potion_descA = ds_list_create();
global.potion_objectA = ds_list_create();
global.potionB = ds_list_create();
global.potion_nameB = ds_list_create();
global.potion_descB = ds_list_create();
global.potion_objectB = ds_list_create();
global.potionC = ds_list_create();
global.potion_nameC = ds_list_create();
global.potion_descC = ds_list_create();
global.potion_objectC = ds_list_create();

global.keys=ds_map_create();
global.ckeys=ds_map_create();

var filename = argument0;
ini_open(filename);
ds_map_read(global.keys,ini_read_string("DATA","KEY",""));
ds_map_read(global.ckeys,ini_read_string("DATA","CKEYS",""));
ds_list_read(global.list,ini_read_string("DATA","LIST",""));
ds_list_read(global.list_ind,ini_read_string("DATA","LIST_IND",""));
ds_list_read(global.list_name,ini_read_string("DATA","LIST_NAME",""));
ds_list_read(global.list_desc,ini_read_string("DATA","LIST_DESC",""));
ds_list_read(global.list_color,ini_read_string("DATA","LIST_COLOR",""));
ds_list_read(global.list_object,ini_read_string("DATA","LIST_OBJECT",""));
ds_list_read(global.list_num,ini_read_string("DATA","LIST_NUM",""));
ds_list_read(global.list_stacks,ini_read_string("DATA","LIST_STACKS",""));
ds_list_read(global.item_act,ini_read_string("DATA","ITEM_ACT",""));
ds_list_read(global.item_act_name,ini_read_string("DATA","ITEM_ACT_NAME",""));
ds_list_read(global.item_act_desc,ini_read_string("DATA","ITEM_ACT_DESC",""));
ds_list_read(global.item_act_object,ini_read_string("DATA","ITEM_ACT_OBJECT",""));
ds_list_read(global.potionA,ini_read_string("DATA","POTIONA",""));
ds_list_read(global.potion_nameA,ini_read_string("DATA","POTION_NAMEA",""));
ds_list_read(global.potion_descA,ini_read_string("DATA","POTION_DESCA",""));
ds_list_read(global.potion_objectA,ini_read_string("DATA","POTION_OBJECTA",""));
ds_list_read(global.potionB,ini_read_string("DATA","POTIONB",""));
ds_list_read(global.potion_nameB,ini_read_string("DATA","POTION_NAMEB",""));
ds_list_read(global.potion_descB,ini_read_string("DATA","POTION_DESCB",""));
ds_list_read(global.potion_objectB,ini_read_string("DATA","POTION_OBJECTB",""));
ds_list_read(global.potionC,ini_read_string("DATA","POTIONC",""));
ds_list_read(global.potion_nameC,ini_read_string("DATA","POTION_NAMEC",""));
ds_list_read(global.potion_descC,ini_read_string("DATA","POTION_DESCC",""));
ds_list_read(global.potion_objectC,ini_read_string("DATA","POTION_OBJECTC",""));
if (instance_exists(obj_Message_System))
{
    ds_queue_read(obj_Message_System.message_queue,ini_read_string("DATA","MESSAGE_SYSTEM",""));
}
ini_close();
//file_delete(filename);
file_delete("quick.dsb");
