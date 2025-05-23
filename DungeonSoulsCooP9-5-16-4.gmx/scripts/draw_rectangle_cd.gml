/// draw_rectangle_cd(x1, y1, x2, y2, value)
var v, x1, y1, x2, y2, xm, ym, vd, vx, vy, vl;
v = argument4
x1 = argument0; y1 = argument1; // top-left corner
x2 = argument2; y2 = argument3; // bottom-right corner
if (v >= 1) then draw_rectangle(x1, y1, x2, y2, false);
//if (v >= 1) return draw_rectangle(x1, y1, x2, y2, false) // entirely filled
xm = (x1 + x2) *0.5; ym = (y1 + y2) *0.5; // middle point
draw_primitive_begin(pr_trianglefan)
draw_vertex(xm, ym); draw_vertex(xm, y1)
// draw corners:
if (v >= 0.125) draw_vertex(x2, y1)
if (v >= 0.375) draw_vertex(x2, y2)
if (v >= 0.625) draw_vertex(x1, y2)
if (v >= 0.875) draw_vertex(x1, y1)
// calculate angle & vector from value:
vd = pi * (v * 2 - 0.5)
vx = cos(vd)
vy = sin(vd)
// normalize the vector, so it hits -1\+1 at either side:
vl = max(abs(vx), abs(vy))
if (vl < 1) {
    vx /= vl
    vy /= vl
}
draw_vertex(xm + vx * (x2 - x1) *0.5, ym + vy * (y2 - y1) *0.5)
draw_primitive_end()
