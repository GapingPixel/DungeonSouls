var item = Random(0,item_max);
if Item_Name_In_List(item_name[item])
{
    while(item_color[item]!=c_white || ((Item_Name_Value(item_name[item]) < item_stack[item] and item_stack[item] != -1) or item_name[item] == "SOUL ORB"))//(item_stack[item]-Item_Name_Value(item_name[item]) == 0))
        var item = Random(0,item_max);
}else
{
    while(item_color[item]!=c_white or item_name[item] == "SOUL ORB")
        var item = Random(0,item_max);
}
return item_object[item];
