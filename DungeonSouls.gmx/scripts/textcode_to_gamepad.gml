///textcode_to_gamepad(string code);
/*
    Converts a code in text format to the gp code. Example: textcode_to_gamepad("A");
*/
var result;
var kcode = argument0;

switch (kcode)
{
    case "X":
        result = gp_face3;
    break;
    case "A":
        result = gp_face1;
    break;
    case "Y":
        result = gp_face4;
    break;
    case "B":
        result = gp_face2;
    break;
    case "LB":
        result = gp_shoulderl;
    break;
    case "RB":
        result = gp_shoulderr;
    break;
    case "RT":
        result = gp_shoulderrb;
    break;
    case "LT":
        result = gp_shoulderlb;
    break;
    case "SELECT":
        result = gp_select;
    break;
    case "START":
        result = gp_start;
    break;
    case "DPAD-UP":
        result = gp_padu;
    break;
    case "LS":
        result = gp_stickl;
    break;
    case "RS":
        result = gp_stickr;
    break;
    
    default:
        result=-1;
    break;
    
}
return result;
