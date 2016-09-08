///scr_chance(probability)
gml_pragma("forceinline");
//Between 0 - 1 
argument0 = clamp(argument0, 0, 1);
return (random(1) < argument0);
