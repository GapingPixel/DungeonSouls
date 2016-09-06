/*
    Corrects the color representation of GMS to normal color representation (in GMS, c_red
    corresponds to c_blue).
*/
var _val = argument0;
var _result;
var _r= _val & $000000FF;
var _g= _val & $0000FF00;
var _b= _val & $00FF0000;
var _a= _val & $FF000000;
_r=_r<<16;
_b=_b>>16;
_result = _a|_r|_g|_b;
return _result;
