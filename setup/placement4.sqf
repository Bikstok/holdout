_pos = [_this select 0, _this select 1,_this select 2];
		
"spawn_west" setmarkerpos [_pos select 0, _pos select 1, 100];


TitleText [format["Done"], "PLAIN DOWN"];
onMapSingleClick "";

sleep 0.5;
TitleText [format["You will be teleported shortly"], "PLAIN DOWN"];

sleep 2;
execVM "setup\teleport.sqf";
started = true;
publicVariable "started" 

