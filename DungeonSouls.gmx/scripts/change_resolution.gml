///change_resolution(resolution_index)
gml_pragma("forceinline");
switch (argument0)
{
    case 0:
        window_set_size(640,480);
        view_wport = 640;
        view_hport = 480;
        //surface_resize(application_surface,320,240);                
        global.screen_size = 0;
        break;
    case 1:
        window_set_size(800,600);
        view_wport = 800;
        view_hport = 600; 
        //surface_resize(application_surface,320,240);           
        global.screen_size = 1;
        break;
    case 2:
        window_set_size(1024,768);  
        view_wport = 1024;
        view_hport = 768;                            
        global.screen_size = 2;
        break;
    case 3:   
        window_set_size(1280,720);
        view_wport = 1280;
        view_hport = 720;                  
        global.screen_size = 3;
        break;
    case 4:   
        window_set_size(1360,768);
        view_wport = 1360;
        view_hport = 768;                                           
        global.screen_size = 4;
        break;
    case 5:
        window_set_size(1366,768);
        view_wport = 1366;
        view_hport = 768;                              
        global.screen_size = 5;
        break;
    case 6:
        window_set_size(1920,1080);
        view_wport = 1920;
        view_hport = 1080;                              
        global.screen_size = 6;
        break;  
    case 7:
        window_set_size(2560,1440);
        view_wport = 2560;
        view_hport = 1440;                              
        global.screen_size = 7;
        break;                             
    case 8:
        if global.full_screen == true
        {
            window_set_fullscreen(false);
            global.full_screen = false;
        }
        else
        if global.full_screen == false
        {
            window_set_fullscreen(true);
            global.full_screen = true;
        }                
        break;
}
