/**
    Converts the index of the difficulty to the difficulty of the game.
    argument0 - An integer from 0 to 3.
*/
var result;
switch (argument0)
{
    case 0:
        result="Easy";
    break;
    case 1:
        if (global.normal)
        {
            result="Normal";
        }
        else
        {
            result=index_to_difficulty(argument0-1);
        }
    break;
    case 2:
        if (global.nightmare)
        {
            result="Nightmare";
        }
        else
        {
            result=index_to_difficulty(argument0-1);
        }    
    break;
    case 3:
        if (global.impossible)
        {
            result="Impossible";
        }
        else
        {
            result=index_to_difficulty(argument0-1);
        }  
    break;
    default:
        result="Normal";
    break;
}

return result;
