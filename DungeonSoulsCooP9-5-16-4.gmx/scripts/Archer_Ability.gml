gml_pragma("forceinline");
var extra="",extraB="",extraC=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+8 per level)";
    extraB = " (+1 per level)";
    extraC=" (+2 per level)";
}
sk_name[1]      = "Arrow Shoot";
sk_nameB[1]     = "Pentuple Arrow";
sk_nameC[1]     = "Rain of Arrows";
sk_desc[1]      = "- fires arrow that deals [c="+string(DS_ORANGE)+"]"+string(92+(8*ability_lvl[0]))+extra+"%[/c] damage";
sk_descB[1]     = "- normal attack fires [c="+string(DS_GRAY)+"]5x[/c] more arrow#for [c="+string(DS_YELLOW)+"]"+string(2+ability_lvl[1])+extraB+"[/c] seconds";
sk_descC[1]     = "- rain [c="+string(DS_GRAY)+"]"+string(10+(2*ability_lvl[2]))+extraC+"x[/c] arrows to a target location";
