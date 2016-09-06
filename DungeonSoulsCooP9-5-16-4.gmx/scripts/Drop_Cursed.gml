var item = irandom_range(0,5);
var result;
switch (item)
{
    case 0:
        result = obj_Scepter_of_Power;
    break;
    case 1:
        result = obj_Amplifying_Tome;
    break;
    case 2:
        result = obj_Vital_Armor;
    break;
    case 3:
        result = obj_Shoes_of_Haste;
    break;
    case 4:
        result = obj_Blizzard_Cape;
    break;
    case 5:
        result = obj_Blind_Blade;
    break;
    default:
        result = obj_Potion_of_Retrieve;
    break;
}
return result;
