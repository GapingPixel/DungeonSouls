gml_pragma("forceinline");
var extraTag="",extra="",extra1="",extra2="",extraB1="",extraB2="",extraC1="",extraC2=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+5 per level)";
    extra1=" (+5 per level)"
    extra2=" (+1 per level)"
    extraB1 = " (+15 per level)";
    extraB2=" (+0.5 per level)";
    extraC1=" (+1 per level)";
    extraC2=" (+10 per level)";
    extraTag="#";
}
sk_name[6]      = "Necrotic Blast";
sk_nameB[6]     = "Blood for Attack";
sk_nameC[6]     = "Summon";
sk_desc[6]      = "- creates a projectile ([c="+string(DS_PURPLE)+"]"+string(100+(5*ability_lvl[0]))+extra+"%[/c] magic damage) #that has "+string(45+(5*ability_lvl[0]))+extra1+"% to scatter "+extraTag+"([c="+string(DS_PURPLE)+"]"+string(12+(1*ability_lvl[0]))+extra2+"%[/c] magic damage)";
sk_descB[6]     = "- [c="+string(DS_GREEN)+"]TOGGLE ON:[/c] normal attack deals an #additional [c="+string(DS_ORANGE)+"]"+string(50+(15*ability_lvl[1]))+extraB1+"%[/c] attack damage but #cost [c="+string(DS_GREEN)+"]"+string(1+(0.5*ability_lvl[1]))+extraB2+"%[/c] health every normal attack";
sk_descC[6]     = "- summon upto [c="+string(DS_GRAY)+"]"+string(summon+ability_lvl[2])+extraC1+"[/c] skeletons that have#[c="+string(DS_GREEN)+"]"+string(80+(ability_lvl[2]*10))+extraC2+"[/c] health and returns [c="+string(DS_GREEN)+"]10%[/c] of your max hp";
