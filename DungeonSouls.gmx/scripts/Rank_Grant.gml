gml_pragma("forceinline");
switch(rank_title[rank[choice]])
{
    case "NEOPHYTE":
        text = "[c="+string(color[choice])+"]"+rank_title[rank[choice]]+"[/c]##"
        text += "+0% Hp#"
        text += "+0% Atk Damage, +0% Defense, +0% Magic Damage#"
        text += "+0% Magic Resist, +0% Crit Chance, +0% Crit Damage";
        draw_text_colortags(320/2,40-32,text);        
        break;
    case "ESQUIRE":
        text = "[c="+string(color[choice])+"]"+rank_title[rank[choice]]+"[/c]##"
        text += "+2% Hp#"
        text += "+2% Atk Damage, +1% Defense, +2% Magic Damage#"
        text += "+1% Magic Resist, +0% Crit Chance, +0% Crit Damage";
        draw_text_colortags(320/2,40-32,text);        
        break;
    case "NOBLE":
        text = "[c="+string(color[choice])+"]"+rank_title[rank[choice]]+"[/c]##"
        text += "+2% Hp#"
        text += "+4% Atk Damage, +1% Defense, +4% Magic Damage#"
        text += "+1% Magic Resist, +1% Crit Chance, +1% Crit Damage";
        draw_text_colortags(320/2,40-32,text);        
        break;
    case "MASTER":
        text = "[c="+string(color[choice])+"]"+rank_title[rank[choice]]+"[/c]##"
        text += "+5% Hp#"
        text += "+2% Atk Damage, +2% Defense, +2% Magic Damage#"
        text += "+2% Magic Resist, +2% Crit Chance, +2% Crit Damage";
        draw_text_colortags(320/2,40-32,text);
        break;
    case "CHIEF":
        text = "[c="+string(color[choice])+"]"+rank_title[rank[choice]]+"[/c]##"
        text += "+8% Hp#"
        text += "+2% Atk Damage, +4% Defense, +2% Magic Damage#"
        text += "+4% Magic Resist, +2% Crit Chance, +2% Crit Damage";
        draw_text_colortags(320/2,40-32,text);        
        break;
    case "TRANSCENDER":
        text = "[c="+string(color[choice])+"]"+rank_title[rank[choice]]+"[/c]##"
        text += "+10% Hp#"
        text += "+5% Atk Damage, +5% Defense, +5% Magic Damage#"
        text += "+5% Magic Resist, +5% Crit Chance, +5% Crit Damage";
        draw_text_colortags(320/2,40-32,text);
        break; 
    default:
        text = "[c="+string(color[choice])+"]"+rank_title[rank[choice]]+"[/c]##"
        text += "+0% Hp#"
        text += "+0% Atk Damage, +0% Defense, +0% Magic Damage#"
        text += "+0% Magic Resist, +0% Crit Chance, +0% Crit Damage";
        draw_text_colortags(320/2,40-32,text);
        break;                                       
}
