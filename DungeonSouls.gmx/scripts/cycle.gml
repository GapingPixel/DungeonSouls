/// cycle(value, min, max)
var a1 = argument0;
var a2 = argument1;
var a3 = argument2;

a1 = (a1 - a2) mod (a3 - a2)
if (a1 < 0) return a1 + a3
return a1 + a2
