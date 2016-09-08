///Add_Consumable()
/*
    Return - True if successfully added. False, elsewise
*/
var result=false;
//POTION_POUCH CODE!
var extra_slots = Item_Value(spr_Potion_Pouch);
if (extra_slots<0 || extra_slots==undefined)
{
    extra_slots=0;
}
//END POTION_POUCH
if ds_list_size(global.potionA) < 1
{    
    ds_list_add(global.potionA,other.sprite_index)
    ds_list_add(global.potion_nameA,other.item_name[other.item_num])
    ds_list_add(global.potion_descA,other.item_desc[other.item_num])        
    ds_list_add(global.potion_objectA,other.item_object[other.item_num])
    result=true;
}
else if (ds_list_size(global.potionA)<2+extra_slots && ds_list_find_value(global.potion_nameA,0)==other.item_name[other.item_num]) //Same type
{
    ds_list_add(global.potionA,other.sprite_index)
    ds_list_add(global.potion_nameA,other.item_name[other.item_num])
    ds_list_add(global.potion_descA,other.item_desc[other.item_num])        
    ds_list_add(global.potion_objectA,other.item_object[other.item_num])
    result=true;
}
else if ds_list_size(global.potionB) < 1
{
    ds_list_add(global.potionB,other.sprite_index)
    ds_list_add(global.potion_nameB,other.item_name[other.item_num])
    ds_list_add(global.potion_descB,other.item_desc[other.item_num])        
    ds_list_add(global.potion_objectB,other.item_object[other.item_num])
    result=true;
}
else if (ds_list_size(global.potionB)<2+extra_slots && ds_list_find_value(global.potion_nameB,0)==other.item_name[other.item_num]) //Same type
{
    ds_list_add(global.potionB,other.sprite_index)
    ds_list_add(global.potion_nameB,other.item_name[other.item_num])
    ds_list_add(global.potion_descB,other.item_desc[other.item_num])        
    ds_list_add(global.potion_objectB,other.item_object[other.item_num])
    result=true;
}
else if ds_list_size(global.potionC) < 1
{
    ds_list_add(global.potionC,other.sprite_index)
    ds_list_add(global.potion_nameC,other.item_name[other.item_num])
    ds_list_add(global.potion_descC,other.item_desc[other.item_num])        
    ds_list_add(global.potion_objectC,other.item_object[other.item_num])
    result=true;
}
else if (ds_list_size(global.potionC)<2+extra_slots && ds_list_find_value(global.potion_nameC,0)==other.item_name[other.item_num]) //Same type
{
    ds_list_add(global.potionC,other.sprite_index)
    ds_list_add(global.potion_nameC,other.item_name[other.item_num])
    ds_list_add(global.potion_descC,other.item_desc[other.item_num])        
    ds_list_add(global.potion_objectC,other.item_object[other.item_num])
    result=true;
}
if (result)
{
    with obj_Item
        Item_Init();
}
return result;
