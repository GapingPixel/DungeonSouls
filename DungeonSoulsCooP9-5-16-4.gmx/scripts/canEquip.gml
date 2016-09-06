///canEquip(int character_index,int forge_item_index)
/*
    Checks whether the character can yeld the weapon in forge_item_index
*/
var result = false;
var type = global.forge_item_type[argument1];
switch (argument0)
{
    case 0: //BARBARIAN
        if (type=="AXE")
        {
            result = true;
        }
    break;
    case 1: //ARCHER
        if (type=="BOW")
        {
            result = true;
        }
    break;
    case 2: //THIEF
        if (type=="DAGGER" || type=="KNIFE")
        {
            result = true;
        }
    break;
    case 3: //WARRIOR
        if (type=="SWORD")
        {
            result = true;
        }
    break;
    case 4: //MAGE
        if (type=="STAFF")
        {
            result = true;
        }
    break;
    case 5: //CLERIC
        if (type=="SCEPTER" || type == "STAFF")
        {
            result = true;
        }
    break;
    case 6: //NECRO
        if (type=="STAFF" || type == "SCEPTER")
        {
            result = true;
        }
    break;
    case 7: //NIGHTBLADE
        if (type=="AXE")
        {
            result = true;
        }
    break;
    case 8: //BRAWLER
        if (type=="AXE" || type == "SWORD")
        {
            result = true;
        }
    break;
    case 9: //ENGINEEER
        if (type=="AXE")
        {
            result = true;
        }
    break;
}
return result;
