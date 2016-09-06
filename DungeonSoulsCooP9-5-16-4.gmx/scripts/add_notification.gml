///add_notification(spr_icon,image_index,message,time)
gml_pragma("forceinline");
msg_list = ds_list_create();
ds_list_add(msg_list,argument0);
ds_list_add(msg_list,argument1);
ds_list_add(msg_list,argument2);
ds_list_add(msg_list,argument3);
if (!instance_exists(obj_Message_System)) {
    //instance_activate_object(obj_Message_System);
} with (obj_Message_System) {
    ds_queue_enqueue(message_queue,other.msg_list);
}
