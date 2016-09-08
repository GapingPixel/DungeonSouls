gml_pragma("forceinline");
var extra="",extraB="",extraC=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+5 per level)";
    extraB = " (+1 per level)";
    extraC=" (+2 per level)";
}
sk_name[5]      = "Holy Light";
sk_nameB[5]     = "Holy Gate";
sk_nameC[5]     = "Regeneration";
sk_desc[5]      = "- cast bouncing projectile that #deals [c="+string(DS_PURPLE)+"]"+string(95+(5*ability_lvl[0]))+extra+"%[/c] magic damage";
sk_descB[5]     = "- deploys a gate that multiplies projectiles up to#[c="+string(DS_GRAY)+"]"+string(3+ability_lvl[1])+extraB+"[/c] when passing through it";
sk_descC[5]     = "- regenerates [c="+string(DS_GREEN)+"]"+string(10+(2*ability_lvl[2]))+extraC+"[/c] hp per [c="+string(DS_GREEN)+"]3[/c] seconds"
