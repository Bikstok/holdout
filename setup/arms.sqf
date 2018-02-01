closedialog 0;
sleep 0.5;

"town" setmarkerpos [11197, 8716, 8];
"spawn_north" setmarkerpos [11097, 8772, 8];
"spawn_east" setmarkerpos [11250, 8800, 8];
"spawn_south" setmarkerpos [11321, 8722, 8];
"spawn_west" setmarkerpos [11249, 8597, 8];

sleep .5;
TitleText [format["You will be teleported shortly. Check your map to see the waypoints."], "PLAIN"];

sleep 2;
execVM "setup\teleport.sqf";
started = true;
publicVariable "started" 