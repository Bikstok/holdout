// Cadet
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;
_this addVest 'V_BandollierB_blk';
_this addUniform 'U_Competitor';
_this addHeadgear 'H_Cap_police';
_weapon = [_this, "arifle_Mk20C_plain_F", 9, "30Rnd_556x45_Stanag_Tracer_Green"] call BIS_fnc_addWeapon;
_this addPrimaryWeaponItem 'optic_MRCO';
_this additem 'FirstAidKit';
_this additem 'FirstAidKit';
_this linkitem 'itemGPS';
_this additem 'SmokeShell';
_this additem 'SmokeShell';