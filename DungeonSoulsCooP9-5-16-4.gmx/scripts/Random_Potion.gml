gml_pragma("forceinline");
var rand choose(obj_Potion,obj_Potion_of_Retrieve,obj_Potion_of_Rage, obj_Potion_of_Penetration);
/*var rand = Random(0,2);

switch(rand)
{
    case 0:
        return obj_Potion;
        break;
    case 1:
        return obj_Potion_of_Retrieve;
        break;
    case 2:
        return obj_Potion_of_Rage;
        break;
    case 3:
        return obj_Potion_of_Penetration;
        break;        
    default:
        break;
}
