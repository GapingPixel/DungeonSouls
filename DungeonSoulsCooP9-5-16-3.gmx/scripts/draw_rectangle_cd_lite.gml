/// c(x1, y1, x2, y2, value)
// primitive-less version, for GM* Lite and HTML5 export
var v, x1, y1, x2, y2, xm, ym, xp, yp, vd, vx, vy, vl;
v = argument4
//if (v <= 0) return 0 // nothing to be drawn
x1 = argument0; y1 = argument1; // first point
x2 = argument2; y2 = argument3; // second point
if (v >= 1) then draw_rectangle(x1, y1, x2, y2, false);
//if (v >= 1) return draw_rectangle(x1, y1, x2, y2, false) // entirely filled
xm = (x1 + x2) / 2; ym = (y1 + y2) / 2; // middle point
xp = xm; yp = y1; // previous points for pr_trianglefan simulation
// draw corners:
if (v >= 0.125) { draw_triangle(xm, ym, xp, yp, x2, y1, false); xp = x2; yp = y1 }
if (v >= 0.375) { draw_triangle(xm, ym, xp, yp, x2, y2, false); xp = x2; yp = y2 }
if (v >= 0.625) { draw_triangle(xm, ym, xp, yp, x1, y2, false); xp = x1; yp = y2 }
if (v >= 0.875) { draw_triangle(xm, ym, xp, yp, x1, y1, false); xp = x1; yp = y1 }
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
draw_triangle(xm, ym, xp, yp, xm + vx * (x2 - x1) / 2, ym + vy * (y2 - y1) / 2, false)
