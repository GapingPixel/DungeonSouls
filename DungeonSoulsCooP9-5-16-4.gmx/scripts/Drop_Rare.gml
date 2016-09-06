var item = Random(0,item_max);
if Item_Name_In_List(item_name[item])
{
    while(item_color[item] != merge_color(c_aqua,c_gray,0.7) and item_color[item] != DS_ORANGE and (Item_Name_Value(item_name[item]) < item_stack[item] and item_stack[item] != -1) or item_name[item] == "SOUL ORB" )// and (item_stack[item]-Item_Name_Value(item_name[item]) == 0))
        var item = Random(0,item_max);
}else
{
    while(item_color[item] != merge_color(c_aqua,c_gray,0.7) and item_color[item] != DS_ORANGE or item_name[item] == "SOUL ORB")
        var item = Random(0,item_max);
}
return item_object[item];    
