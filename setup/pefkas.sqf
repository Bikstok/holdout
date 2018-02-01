closedialog 0;
sleep 0.5;

"town" setmarkerpos [20597, 20127, 8];
"spawn_north" setmarkerpos [20028, 19766, 8];
"spawn_east" setmarkerpos [20062, 19674, 8];
"spawn_south" setmarkerpos [19927, 19577, 8];
"spawn_west" setmarkerpos [19965, 19514, 8];

sleep .5;
TitleText [format["You will be teleported shortly. Check your map to see the waypoints."], "PLAIN"];

sleep 2;
execVM "setup\teleport.sqf";
started = true;
publicVariable "started" 