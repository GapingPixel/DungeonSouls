globalvar Text;
Text=ds_map_create();
ini_open("Languages.ini");
//Call this script when language is switched
/*Text[? "SinglePlayer"]=ini_read_real(global.language,1,0); 
Text[? "Text2"]=ini_read_string(global.language,"Text2","default");
Text[? "Text3"]=ini_read_string(global.language,"Text3","default");
Text[? "Text4"]=ini_read_string(global.language,"Text4","default");
Text[? "Text5"]=ini_read_string(global.language,"text5","default");*/
ini_close();

    
