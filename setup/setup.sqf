//start removeAction 0 forEach allUnits;

closeDialog 0;
sleep 0.5;
titleText [format["Click on the position you would like to defend."], "PLAIN DOWN"];
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, 8] execVM ""setup\townplacement.sqf""; True";