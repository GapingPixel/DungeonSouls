gml_pragma("forceinline");
/**
    Checks if the keyboard's keybindings are present. In case they aren't, a message
    is emitted and the missing keys are replaced by the default ones.
*/

ini_open(working_directory+"\configuration"+global.version+".ini")

var left = Return_VSKey(ini_read_real("CONFIG","LEFT",     ord("A")));
var right= Return_VSKey(ini_read_real("CONFIG","RIGHT",    ord("D")));
var up = Return_VSKey(ini_read_real("CONFIG","UP",       ord("W")));
var down = Return_VSKey(ini_read_real("CONFIG","DOWN",     ord("S")));
var potion = Return_VSKey(ini_read_real("CONFIG","POTION",   ord("F")));
var pick = Return_VSKey(ini_read_real("CONFIG","PICK",     vk_space));
var stat = Return_VSKey(ini_read_real("CONFIG","STAT",     vk_tab));
var map = Return_VSKey(ini_read_real("CONFIG","MAP",      ord("M")));
var inv = Return_VSKey(ini_read_real("CONFIG","INV",      ord("C")));        
var sskill = Return_VSKey(ini_read_real("CONFIG","SSKILL",    ord("Q")));
var tskill = Return_VSKey(ini_read_real("CONFIG","TSKILL",    ord("E")));

var cleft = ini_read_real("CONFIG","CLEFT",     JOYSTICK_LSTICK_PUSHED_LEFT);
var cright= ini_read_real("CONFIG","CRIGHT",    JOYSTICK_LSTICK_PUSHED_RIGHT);
var cup = ini_read_real("CONFIG","CUP",       JOYSTICK_LSTICK_PUSHED_UP);
var cdown = ini_read_real("CONFIG","CDOWN",     JOYSTICK_LSTICK_PUSHED_DOWN);
var cpotion = ini_read_real("CONFIG","CPOTION",   textcode_to_gamepad("DPAD-UP"));
var cpick = ini_read_real("CONFIG","CPICK",     textcode_to_gamepad("A"));
var cstat = ini_read_real("CONFIG","CSTAT",     textcode_to_gamepad("Y"));
var cmap = ini_read_real("CONFIG","CMAP",      textcode_to_gamepad("B"));
var cinv = ini_read_real("CONFIG","CINV",      gp_select);        
var csskill = ini_read_real("CONFIG","CSSKILL",    textcode_to_gamepad("LT"));
var ctskill = ini_read_real("CONFIG","CTSKILL",    textcode_to_gamepad("RT"));
var cfskill = ini_read_real("CONFIG","CFSKILL",    textcode_to_gamepad("RB"));
var caskill = ini_read_real("CONFIG","CASKILL",    textcode_to_gamepad("LB"));

var emit_message;
emit_message=false;

if (left== 0)
{
    emit_message=true;
    logger_write("Left key corrected.");
    ini_write_real("CONFIG","LEFT",     ord("A"));
}
if (right== 0)
{
    emit_message=true;
    logger_write("Right key corrected.");
    ini_write_real("CONFIG","RIGHT",     ord("D"));
}
if (up== 0)
{
    emit_message=true;
    logger_write("Up key corrected.");
    ini_write_real("CONFIG","UP",     ord("W"));
}
if (down== 0)
{
    emit_message=true;
    logger_write("Down key corrected.");
    ini_write_real("CONFIG","DOWN",     ord("S"));
}
if (potion== 0)
{
    emit_message=true;
    logger_write("Potion key corrected.");
    ini_write_real("CONFIG","POTION",     ord("F"));
}
if (pick== 0)
{
    emit_message=true;
    logger_write("Pick key corrected.");
    ini_write_real("CONFIG","PICK",     vk_space);
}
if (stat== 0)
{
    emit_message=true;
    logger_write("Stat key corrected.");
    ini_write_real("CONFIG","STAT",     vk_tab);
}
if (map== 0)
{
    emit_message=true;
    logger_write("Map key corrected.");
    ini_write_real("CONFIG","MAP",     ord("M"));
}
if (inv== 0)
{
    emit_message=true;
    logger_write("INV key corrected.");
    ini_write_real("CONFIG","INV",     ord("C"));
}
if (sskill= 0)
{
    emit_message=true;
    logger_write("SSkill key corrected.");
    ini_write_real("CONFIG","SSKILL",     ord("Q"));
}
if (tskill== 0)
{
    emit_message=true;
    logger_write("TSkill key corrected.");
    ini_write_real("CONFIG","TSKILL",     ord("E"));
}



if (cleft != JOYSTICK_LSTICK_PUSHED_LEFT)
{
    emit_message=true;
    logger_write("Left key corrected.");
    ini_write_real("CONFIG","CLEFT",     JOYSTICK_LSTICK_PUSHED_LEFT);
}
if (cright != JOYSTICK_LSTICK_PUSHED_RIGHT)
{
    emit_message=true;
    logger_write("Right key corrected.");
    ini_write_real("CONFIG","CRIGHT",     JOYSTICK_LSTICK_PUSHED_RIGHT);
}
if (cup != JOYSTICK_LSTICK_PUSHED_UP)
{
    emit_message=true;
    logger_write("Up key corrected.");
    ini_write_real("CONFIG","CUP",     JOYSTICK_LSTICK_PUSHED_UP);
}
if (cdown != JOYSTICK_LSTICK_PUSHED_DOWN)
{
    emit_message=true;
    logger_write("Down key corrected.");
    ini_write_real("CONFIG","CDOWN",     JOYSTICK_LSTICK_PUSHED_DOWN);
}
if (cpotion== 0)
{
    emit_message=true;
    logger_write("Potion key corrected.");
    ini_write_real("CONFIG","CPOTION",     textcode_to_gamepad("DPAD-UP"));
}
if (cpick== 0)
{
    emit_message=true;
    logger_write("Pick key corrected.");
    ini_write_real("CONFIG","CPICK",     textcode_to_gamepad("A"));
}
if (cstat== 0)
{
    emit_message=true;
    logger_write("Stat key corrected.");
    ini_write_real("CONFIG","CSTAT",     textcode_to_gamepad("Y"));
}
if (cmap== 0)
{
    emit_message=true;
    logger_write("Map key corrected.");
    ini_write_real("CONFIG","CMAP",     textcode_to_gamepad("B"));
}
if (cinv== 0)
{
    emit_message=true;
    logger_write("INV key corrected.");
    ini_write_real("CONFIG","CINV",     gp_select);
}
if (csskill= 0)
{
    emit_message=true;
    logger_write("SSkill key corrected.");
    ini_write_real("CONFIG","CSSKILL",     textcode_to_gamepad("LT"));
}
if (ctskill== 0)
{
    emit_message=true;
    logger_write("TSkill key corrected.");
    ini_write_real("CONFIG","CTSKILL",     textcode_to_gamepad("RT"));
}
if (cfskill= 0)
{
    emit_message=true;
    logger_write("SSkill key corrected.");
    ini_write_real("CONFIG","CFSKILL",     textcode_to_gamepad("RB"));
}
if (caskill== 0)
{
    emit_message=true;
    logger_write("TSkill key corrected.");
    ini_write_real("CONFIG","CASKILL",     textcode_to_gamepad("LB"));
}

if (emit_message)
{
    logger_write("Dungeon Souls has found some corrupted key bindings and has replaced them "+
    "with factory default keys.");
    show_debug_message("Dungeon Souls has found some corrupted key bindings and has replaced them "+
    "with factory default keys.");
}

ini_close();
