gml_pragma("forceinline");
var extra="",extra1="",extraB1="",extraB2="",extraC="",extraC1="",extraC2=""; //Indicates how much will it be increased per level if in game
if skmode == 1
{
    if (room==Game)
    {
        extra=" (+5 per level)";
        extra1=" (+5 per level)";
        extraB1 = " (+10 per level)";
        extraB2 = " (+1 per level)";
        extraC=" (+10 per level)";
    }
    sk_name[7]      = "Dark Hammer";
    sk_nameB[7]     = "Thick Armor";
    sk_nameC[7]     = "Weapon Switch";
    sk_desc[7]      = "- swings hammer that deals [c="+string(DS_ORANGE)+"]"+string(125+(5*ability_lvl[0]))+extra+"%[/c] damage#and has [c="+string(DS_YELLOW)+"]"+string(10+(5*ability_lvl[0]))+extra1+"%[/c] to [c="+string(DS_YELLOW)+"]stun[/c] enemy on hit for [c="+string(DS_YELLOW)+"]2[/c] sec"
    sk_descB[7]     = "- dashes towards the cursor and increase #defense by [c="+string(DS_BLUE)+"]"+string(50+(10*ability_lvl[1]))+extraB1+"[/c] for [c="+string(DS_YELLOW)+"]"+string(1+(1*ability_lvl[1]))+extraB2+"[/c] seconds";
    sk_descC[7]     = "- transforms the Dark Hammer to Dark Chakram#first strike deals an additional [c="+string(DS_PURPLE)+"]"+string(50+(10*ability_lvl[2]))+extraC+"%[/c]#magic damage";
    
    sk_next_desc[7]      = "[c="+string(DS_ORANGE)+"]"+string(125+(25*(ability_lvl[0]+1)))+"%[/c] damage#[c="+string(DS_YELLOW)+"]"+string(10+(5*(ability_lvl[0]+1)))+"%[/c] [c="+string(DS_YELLOW)+"]stun chance[/c]"
    sk_next_descB[7]     = "[c="+string(DS_BLUE)+"]"+string(50+(10*(ability_lvl[1]+1)))+"[/c] increase defense for [c="+string(DS_YELLOW)+"]"+string(1+(1*(ability_lvl[1]+1)))+"[/c] seconds";
    sk_next_descC[7]     = "[c="+string(DS_PURPLE)+"]"+string(50+(10*(ability_lvl[2]+1)))+"%[/c] additional magic damage";    
}else
{
    if (room==Game)
    {
        extra=" (+8 per level)";
        extra1=" (+5 per level)";
        extraB1 = " (+10 per level)";
        extraB2 = " (+1 per level)";
        extraC=" (+10 per level)";
    }
    sk_name[7]      = "Dark Chakram";
    sk_nameB[7]     = "Thick Armor";
    sk_nameC[7]     = "Weapon Switch";
    sk_desc[7]      = "- throws chakram that deals [c="+string(DS_ORANGE)+"]"+string(50+(8*ability_lvl[0]))+extra+"%[/c] damage#faster movement speed"
    sk_descB[7]     = "- dashes towards the cursor and increase #defense by [c="+string(DS_BLUE)+"]"+string(50+(10*ability_lvl[1]))+extraB1+"[/c] for [c="+string(DS_YELLOW)+"]"+string(1+(1*ability_lvl[1]))+extraB2+"[/c] seconds";
    sk_descC[7]     = "- transforms the Dark Chakram to Dark Hammer#first strike deals an additional [c="+string(DS_ORANGE)+"]"+string(50+(10*ability_lvl[2]))+extraC+"%[/c]#attack damage";
    
    sk_next_descC[7]     = "[c="+string(DS_ORANGE)+"]"+string(50+(10*(ability_lvl[2]+1)))+"%[/c] additional attack damage";    
}
