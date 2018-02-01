_pos = [_this select 0, _this select 1,_this select 2];
		
"spawn_north" setmarkerpos [_pos select 0, _pos select 1, 100];


TitleText [format["Done"], "PLAIN DOWN"];
onMapSingleClick "";

sleep 0.5;
closedialog 0;
sleep 0.5;
TitleText [format["Click on the position you would like the attacker to come from 2/4."], "PLAIN DOWN"];
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, 8] execVM ""setup\placement2.sqf""; True";