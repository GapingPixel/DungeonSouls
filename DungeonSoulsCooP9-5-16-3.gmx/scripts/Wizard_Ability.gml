gml_pragma("forceinline");
var extra="",extraB="",extraC="",extraC1="",extraC2=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+20 per level)";
    extraB = " (+10 per level)";
    extraC=" (+1 per level)";
}
sk_name[4]      = "Fireball";
sk_nameB[4]     = "Hell of Fire";
sk_nameC[4]     = "Duplicate";
sk_desc[4]      = "- bursts 3 fireballs [c="+string(DS_PURPLE)+"]"+string(40+(20*ability_lvl[0]))+extra+"%[/c] magic damage";
sk_descB[4]     = "- creates exploding fires [c="+string(DS_PURPLE)+"]"+string(100+(10*ability_lvl[1]))+extraB+"%[/c] magic#damage from the ground";
sk_descC[4]     = "- spawns a decoy and [c="+string(DS_YELLOW)+"]stun[/c] all enemies #within the range after teleporting#[c="+string(DS_PURPLE)+"]"+string(5*(1*ability_lvl[2]))+extraC+"%[/c] magic damage";
