_pos = [_this select 0, _this select 1,_this select 2];
		
"spawn_east" setmarkerpos [_pos select 0, _pos select 1, 100];


TitleText [format["Done"], "PLAIN DOWN"];
onMapSingleClick "";

sleep 0.5;
closedialog 0;
sleep 0.5;
TitleText [format["Click on the position you would like the attacker to come from 3/4."], "PLAIN DOWN"];
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, 8] execVM ""setup\placement3.sqf""; True";