// Rebel
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;
_this addVest 'V_PlateCarrier1_rgr';
_this addUniform 'U_B_FullGhillie_lsh';
_weapon = [_this, "srifle_EBR_F", 9, "20Rnd_762x51_Mag"] call BIS_fnc_addWeapon;
_this addPrimaryWeaponItem 'optic_ARCO';
_this additem 'FirstAidKit';
_this additem 'FirstAidKit';
_this linkitem 'itemGPS';
_this additem 'HandGrenade';
_this additem 'SmokeShellOrange';
_this additem 'SmokeShellOrange';
_this addGoggles 'G_Balaclava_lowprofile';