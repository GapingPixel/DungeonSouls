/**
    Checks if a certain instance is within the player's view.
    a0 - x position of the instance
    a1 - y posiition of the instance
    a2 - width tolerance
    a3 - height tolerance
*/
var a0 = argument0;
var a1 = argument1;
var a2 = argument2;
var a3 = argument3;

return a0<(view_xview[0]+view_wview[0]+a2) && a0>=(view_xview[0]-a2)
    && a1<(view_yview[0]+view_hview[0]+a3) && a1>=(view_yview[0]-a3);
