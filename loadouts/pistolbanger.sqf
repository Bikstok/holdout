// SWAT
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;
_this addVest 'V_BandollierB_khk';
_this addUniform 'U_BG_Guerilla2_1';
_weapon = [_this, "hgun_Rook40_F", 9, "30Rnd_9x21_Mag"] call BIS_fnc_addWeapon;
_this additem 'FirstAidKit';
_this additem 'FirstAidKit';
_this linkitem 'itemGPS';
_this additem 'HandGrenade';
_this additem 'SmokeShell';
_this additem 'SmokeShell';