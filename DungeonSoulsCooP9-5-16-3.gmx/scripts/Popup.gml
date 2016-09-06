///Popup(string,color)
gml_pragma("forceinline");
obj = instance_create(x,y,obj_Text);
obj.text = argument0;
obj.text_col = argument1;
