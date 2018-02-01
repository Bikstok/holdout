closedialog 0;
sleep 0.5;

"town" setmarkerpos [14207, 21221, 8];
"spawn_north" setmarkerpos [13867, 21375, 8];
"spawn_east" setmarkerpos [13842, 21358, 8];
"spawn_south" setmarkerpos [13811, 21339, 8];
"spawn_west" setmarkerpos [13781, 21320, 8];

sleep .5;
TitleText [format["You will be teleported shortly. Check your map to see the waypoints."], "PLAIN"];

sleep 2;
execVM "setup\teleport.sqf";
started = true;
publicVariable "started" 