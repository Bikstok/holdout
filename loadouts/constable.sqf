// Constable
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;
_this addVest 'V_TacVest_blk_POLICE';
_this addUniform 'U_Rangemaster';
_this addHeadgear 'H_Cap_police';
_weapon = [_this, "arifle_MX_Black_F", 9, "30Rnd_65x39_caseless_mag_Tracer"] call BIS_fnc_addWeapon;
_this addPrimaryWeaponItem 'optic_MRCO';
_this additem 'FirstAidKit';
_this additem 'FirstAidKit';
_this linkitem 'itemGPS';
_this additem 'SmokeShell';
_this additem 'SmokeShell';