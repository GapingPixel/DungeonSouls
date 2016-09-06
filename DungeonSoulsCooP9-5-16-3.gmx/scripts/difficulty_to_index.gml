/**
    Converts the difficulty of the game to an index.
    argument0 - A string containing the difficulty (non-case-sensitive).
*/
var text;
text = string_lower(argument0);
var result;
switch (text)
{
    case "easy":
        result=0;
    break;
    case "normal":
        result=1;
    break;
    case "nightmare":
        result=2;
    break;
    case "impossible":
        result=3;
    break;
    default:
        result=1;
    break;
}

return result;
