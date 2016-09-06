///Random_Items(per_white,per_lime,per_blue);
Item_Init();
randomize();


if ((argument0 > argument1) and (argument0 > argument2)) //COMMON - WHITE
{
    if argument0 > 0 and Test_Chance(argument0)
        return Drop_Common()
    else if argument1 > 0 and Test_Chance(argument1)
        return Drop_Uncommon();
    else if argument2 > 0 and Test_Chance(argument2)
        return Drop_Rare();
    else
        return Drop_Common();
}else
if ((argument1 > argument0) and (argument1 > argument2)) //UNCOMMON - GREEN
{
    if argument1 > 0 and Test_Chance(argument1)
        return Drop_Uncommon()
    else if argument2 > 0 and Test_Chance(argument2)
        return Drop_Rare();
    else if argument0 > 0 and Test_Chance(argument0)
        return Drop_Common();
    else
        return Drop_Common();
}else
if ((argument2 > argument0) and (argument2 > argument1)) //RARE - BLUE
{
    if argument2 > 0 and Test_Chance(argument2)
        return Drop_Rare()
    else if argument0 > 0 and Test_Chance(argument0)
        return Drop_Common()
    else if argument1 > 0 and Test_Chance(argument1)
        return Drop_Uncommon();
    else
        return Drop_Common();
}else
{
    return Drop_Common();
}


/*if argument2 > 0 and Test_Chance(argument2)
{
    var item = Random(0,item_max);
    while(item_color[item] == c_lime or item_color[item] == c_white or item_name[item] == "SOUL ORB")
        var item = Random(0,item_max);
    return item_object[item];    
}else
if argument1 > 0 and Test_Chance(argument1)
{
    var item = Random(0,item_max);
    while(item_color[item] == c_white or item_color[item] == merge_color(c_aqua,c_gray,0.7) or item_name[item] == "SOUL ORB")
        var item = Random(0,item_max);
    return item_object[item];    
}else
{
    var item = Random(0,item_max);
    while(item_color[item] == c_lime or item_color[item] == merge_color(c_aqua,c_gray,0.7) or item_name[item] == "SOUL ORB")
        var item = Random(0,item_max);
    return item_object[item];    
}*/

/*if argument0 > argument1
{
    if Test_Chance(argument0)
    {    
        var item = Random(0,item_max);
        while(item_color[item] == c_lime or item_name[item] == "SOUL ORB")
            var item = Random(0,item_max);
        return item_object[item];
    }else
    if Test_Chance(argument1)
    {
        var item = Random(0,item_max);
        while(item_color[item] == c_white or item_name[item] == "SOUL ORB")
            var item = Random(0,item_max);
        return item_object[item];
    }else
    {
        var item = Random(0,item_max);
        while(item_color[item] == c_lime or item_name[item] == "SOUL ORB")
            var item = Random(0,item_max);
        return item_object[item];
    }
}else
{
    if Test_Chance(argument1)
    {
        var item = Random(0,item_max);
        while(item_color[item] == c_white or item_name[item] == "SOUL ORB")
            var item = Random(0,item_max);
        return item_object[item];
    }else
    if Test_Chance(argument0)
    {    
        var item = Random(0,item_max);
        while(item_color[item] == c_lime or item_name[item] == "SOUL ORB")
            var item = Random(0,item_max);
        return item_object[item];
    }else
    {
        var item = Random(0,item_max);
        while(item_color[item] == c_lime or item_name[item] == "SOUL ORB")
            var item = Random(0,item_max);
        return item_object[item];
    }
}*/
