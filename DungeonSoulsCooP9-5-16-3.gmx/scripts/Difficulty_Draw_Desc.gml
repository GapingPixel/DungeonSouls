gml_pragma("forceinline");
draw_set_halign(fa_left);
switch (global.difficulty) {
       
       case EASY:
       draw_set_color(c_gray);
       draw_text(320/2,240/2-32+64+32,"EASY");
       draw_set_color(c_dkgray);
       draw_text(320/2,240/2-32+64+40,'[Beginners]');
       var dtext = "Enemies have 50% hp#";
       dtext += "Enemies deal 50% damage#";
       dtext += "50% experience gain";
       draw_text_colortags(320/2,240/2-32+64+48,dtext);
       break;

       case NORMAL:
       draw_set_color(c_gray);
       draw_text(320/2,240/2-32+64+32,"NORMAL");
       draw_set_color(c_dkgray);
       draw_text(320/2,240/2-32+64+40,'[Experienced]');
       var dtext = "Enemies have 100% hp#";
       dtext += "Enemies deal 100% damage#";
       dtext += "100% experience gain";
       draw_text_colortags(320/2,240/2-32+64+48,dtext);    
       break;
       
       case HARD:
       draw_set_color(c_gray);    
       draw_text(320/2,240/2-32+64+32,"NIGHTMARE");
       draw_set_color(c_dkgray);
       draw_text(320/2,240/2-32+64+40,'[Advanced]'); 
       var dtext = "Enemies have 200% hp#";
       dtext += "Enemies deal 200% damage#";
       dtext += "Enemies walk 50% faster#";
       dtext += "300% experience gain";
       draw_text_colortags(320/2,240/2-32+64+48,dtext);       
       break;

       case IMPOSSIBLE:
       draw_set_color(c_gray);    
       draw_text(320/2,240/2-32+64+32,"IMPOSSIBLE");
       draw_set_color(c_dkgray);
       draw_text(320/2,240/2-32+64+40,"[Don't deserve to live]"); 
       var dtext = "Enemies have 300% hp#";
       dtext += "Enemies deal 250% damage#";
       dtext += "Enemies walk 60% faster#";
       dtext += "400% experience gain";
       draw_text_colortags(320/2,240/2-32+64+48,dtext);       
       break;
}
draw_set_halign(false);
draw_set_color(c_white);

/*
EASY “For beginners”
Enemies has 50% hp
Enemies deal 20% damage
300% experience gain

NORMAL “For experienced”
Enemies has 100% hp
Enemies deal 100% damage
100% experience gain

NIGHTMARE “For players who wants challenge”
Enemies has 150% hp
Enemies deal 150% damage
Enemy walk 50% faster
50% experience gain

*/
