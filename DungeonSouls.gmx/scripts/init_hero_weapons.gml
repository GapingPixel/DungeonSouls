gml_pragma("forceinline");
ini_open(ARCANE_FORGE_FILE);
    for (var i=0;i<10;i++) {
        global.arcane_forge_weapon[i]=ini_read_real("WEAPONS","HERO"+string(i),default_hero_weapon(i));
        global.arcane_forge_weapon_sprite[i]=global.forgedb_item_sprite[global.arcane_forge_weapon[i]];
    }
ini_close();
