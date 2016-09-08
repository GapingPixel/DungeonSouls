///scr_init_settings_text
gml_pragma("forceinline");
xx = view_xview + view_wview/2;//Options
for ( var i = 10; i >= 0; i--) {
    yy[i] = view_yview +  view_wview*.3 +(20*i) 
}

///X
xxx = 242;
xxxx = 100;
for ( var i = 10; i >= 0; i--) {
    yyyy[i] = 36+(20*i) 
}

//Volume Position
vol_x = view_xview + 205 //view_wview/1.77;
vol_y = view_yview+ 85//view_hview/2.45;

switch (global.language) { 

    case ENGLISH:
    text_gameplay[0] = "Screen Shake"; 
    text_gameplay[1] = "Flash";
    text_gameplay[2] = "Autocast";
    text_gameplay[3] = "Autopick";
    text_gameplay[4] = "Glow";
    text_gameplay[5] = "Hp Bar";
    text_gameplay[6] = "Mapack";
    text_gameplay[7] = "Smooth camera";
    text_gameplay[8] = "Back";

    text_options[0] = "Controls";
    text_options[1] = "Gameplay"; 
    text_options[2] = "Stats"; 
    text_options[3] = "Settings"; 
    text_options[4] = "Back"; 

    text_settings[8] = "Back";
    text_settings[7] = "Reset Data";
    text_settings[6] = "Language";
    text_settings[5] = "Vibration";
    text_settings[4] = "Sfx Volume";
    text_settings[3] = "Music Volume";
    text_settings[2] = "Vsync";
    text_settings[1] = "FullScreen";
    text_settings[0] = "Resolution";

    fullscreen[1] = "On";
    fullscreen[0] = "Off";
    vsync[1] = "On";
    vsync[0] = "Off";
    vibration[1] = "On";
    vibration[0] = "Off";
    
    lang[0] = "English";
    lang[1] = "Spanish";
    lang[2] = "Japanese";
    lang[3] = "French";
    lang[4] = "Portuguese";
    lang[5] = "German";
    lang[6] = "Chinese";
    break;
    
    case SPANISH:
    text_gameplay[0] = "Screen Shake"; 
    text_gameplay[1] = "Flash";
    text_gameplay[2] = "Autocast";
    text_gameplay[3] = "Autopick";
    text_gameplay[4] = "Glow";
    text_gameplay[5] = "Barra HP";
    text_gameplay[6] = "Mapack";
    text_gameplay[7] = "Camara Suave";
    text_gameplay[8] = "Atras";

    text_options[0] = "Controles";
    text_options[1] = "Gameplay"; 
    text_options[2] = "Stadisticas"; 
    text_options[3] = "Configuracion"; 
    text_options[4] = "Atras"; 

    text_settings[8] = "Atras";
    text_settings[7] = "Resetear Data";
    text_settings[6] = "Lenguage";
    text_settings[5] = "Vibracion";
    text_settings[4] = "Volumen SFX";
    text_settings[3] = "Volumen de Música";
    text_settings[2] = "Vsync";
    text_settings[1] = "Pantalla Completa";
    text_settings[0] = "Resolucion";

    fullscreen[1] = "Si";
    fullscreen[0] = "No";
    vsync[1] = "Si";
    vsync[0] = "No";
    vibration[1] = "Si";
    vibration[0] = "No";
    
    lang[0] = "Ingles";
    lang[1] = "Español";
    lang[2] = "Japones";
    lang[3] = "Frances";
    lang[4] = "Portuges";
    lang[5] = "Aleman";
    lang[6] = "Chino";
    break;
}


