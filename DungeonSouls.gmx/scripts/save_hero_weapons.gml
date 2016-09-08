gml_pragma("forceinline");
ini_open(ARCANE_FORGE_FILE);
    //for (var i=0;i<10;i++)
    for (var i=9;i>=0;i--)
    {
        ini_write_real("WEAPONS","HERO"+string(i),global.arcane_forge_weapon[i]);
    }
ini_close();
