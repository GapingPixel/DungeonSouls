///draw_text_outlined(x,y,message,col_outline,col_inside)
gml_pragma("forceinline");
var a0 = argument0;
var a1 = argument1;
var a2 = argument2;
var a3 = argument3;
{
    draw_set_color(a3);
    draw_text(a0+1,a1,a2);
    draw_text(a0-1,a1,a2);
    draw_text(a0,a1-1,a2);
    draw_text(a0,a1+1,a2);
    draw_set_color(argument4);
    draw_text(a0,a1,a2);
    draw_set_color(c_black);
}
