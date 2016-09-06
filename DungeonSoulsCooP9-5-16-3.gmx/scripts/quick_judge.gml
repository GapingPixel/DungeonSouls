///quick_judge(x,y,otherx,othery,rangex,rangey)
/*
    Quickly checks whether two points are in a certain rectangle range of each other.
    Returns - True if (x,y) is in a rectangle of size (rangex,rangey) with center (otherx,othery)
*/
var _x = argument0;
var _y = argument1;
var _otherx = argument2;
var _othery = argument3;
var _rangex = argument4;
var _rangey = argument5;
var result= (_x>_otherx-_rangex && _x<_otherx+_rangex) && 
            (_y>_othery-_rangey && _y<_othery+_rangey);
return result;
