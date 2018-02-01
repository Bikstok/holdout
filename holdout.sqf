// To exec:                                                                                                                                                       
// [240,0,20,"spawn_north","spawn_east","spawn_west","spawn_south","town"] execVM "holdout.sqf";                                                                    
// [timebetweenwaves,startingwavenumber,decreasetimeeverywave,"spawnmarker1","spawnmarker2","spawnmarker3","spawnmarker4","attackmarker"] execVM "holdout.sqf";

if (!isServer) exitWith {};

	_starttime = _this select 0;
	_startingwave = _this select 1;
	_decreasetime = _this select 2;
	_spawnmarker1 = _this select 3;
	_spawnmarker2 = _this select 4;
	_spawnmarker3 = _this select 5;
	_spawnmarker4 = _this select 6;
	_attackmarker = _this select 7;

sleep 15; //time till first wave spawns

Private ["_spawning","_timer","_wave","_type", "_text","_grp","_waypoint1","_enemyCount"];

_timer = _starttime; //starting time between waves
_wave = _startingwave;  //starting wave number

spawning = 1; //can be edited via debug "spawning = 0" exec on server

while {spawning > 0} do {

	_enemyCount = 3; // default enemy count
	{ _enemyCount = _enemyCount + 2; } forEach allPlayers;

	if (_timer > 30) then {
		_timer = _timer - _decreasetime;
	};
	
	_wave = _wave + 1;

	_side = west;
	_spawnPos = [_spawnmarker1,_spawnmarker2,_spawnmarker3,_spawnmarker4] call BIS_fnc_selectRandom;

	sleep 1;

	if ( _wave >= 1) then {
		_type = "Cadets";
		_text = "Cadets approaching to meat-shield their superiors!";
	};
	if ( _wave >= 3) then {
		_type = "Constables";
		_text = "MadMax has called for backup!";
	};
	if ( _wave == 5) then {
		_type = "Hummingbird";
		_text = "Watch out! Badabing going on air patrol..";
	};
	if ( _wave >= 6) then {
		_type = "Lieutenants";
		_text = "This is Lieutenant Nomak! Oi! Oi! Oi!";
	};
	if ( _wave >= 8) then {
		_type = "Rebels";
		_text = "Rebels have shown up to join the slaughter!";
	};
	if ( _wave == 10) then {
		_type = "Hellcat";
		_text = "Wondero is on scene! Just flying his helicopter around, or air support...idk?!";
	};
	if ( _wave == 11) then {
		_type = "Hunter HMG";
		_text = "The infamous Nighteyes came out of retirement! Watch out for his Hunter HMG!";
	};
	if ( _wave >= 12) then {
		_type = "Cadets";
		_text = "A fresh set of cadets approaching to meat-shield!";
	};
	if ( _wave >= 14) then {
		_type = "Rebels";
		_text = "More rebels have shown up to join the slaughter!";
	};
	if ( _wave == 16) then {
		_type = "Hummingbird";
		_text = "Badabing is back in the air..";
	};
	if ( _wave == 17) then {
		_type = "Constables";
		_enemyCount = _enemyCount + 10;
		_text = "Officers from all servers have been alerted! Constables everywhere!";
	};
	if ( _wave == 18) then {
		_type = "Unarmed";
		_text = "This tactic isn't working. Jin is on scene with his no gun unit to negotiate!";
	};
	if ( _wave >= 19) then {
		_type = "Rebels";
		_text = "More rebels are approaching!";
	};
	if ( _wave >= 21) then {
		_type = "SWAT";
		_text = "USCG Cox and Volunteer have been called! SWAT is being deployed.";
	};
	if ( _wave >= 22) then {
		_type = "Rebels";
		_text = "More rebels have shown up!";
	};
	if ( _wave >= 25) then {
		_type = "Pistol Bangers";
		_text = "Gunshots have attracted the trolls of Kavala! Oh shit! Gypsy Hunters!";
	};
	if ( _wave >= 27) then {
		_type = "Bounty Hunters";
		_text = "Adminnovative is on the prowl for your bounty! Look out! Bounty Hunting Admins Everywhere!";
	};
	if ( _wave >= 29) then {
		_type = "Rebels";
		_text = "Free Syrian Army is pissed that you stole their wives (and goats)!";
	};
	if ( _wave >= 31) then {
		_type = "50cal";
		_text = "MrSmoke, the .50 cal legend, is coming with his friends to saw you in half!";
	};
	if ( _wave == 32) then {
		_type = "Rebels";
		_enemyCount = _enemyCount + 10;
		_text = "Sick of losing, the Regiment Mass Recruiting might pay off!";
	};
	if ( _wave >= 33) then {
		_type = "Ghost Hawk";
		_text = "We need Motown!!! Yoven is back at it again with his Ghosthawk!";
	};
	if ( _wave >= 34) then {
		_type = ["Cadets","Constables","Hummingbird","Lieutenants","Rebels","Rebels","Rebels","50cal"] call BIS_fnc_selectRandom;
		_text = "Just die already!";
	};
	if ( _wave >= 37) then {
		_type = ["Cadets","Constables","Hummingbird","Lieutenants","Rebels","Rebels","Rebels","50cal"] call BIS_fnc_selectRandom;
		_enemyCount = _enemyCount + 5;
		_text = "Just die already!";
	};
	if ( _wave >= 40) then {
		_type = "Almost Victory";
		_text = "Kill the remaining enemies to succesfully complete the mission.";
	};
	if ( _wave >= 41) then {
		_wave = _wave - 1;
	};

	sleep 1;
	
	switch (_type) do {
		case "Cadets": {
			_grp = [getMarkerPos _spawnPos, _side, _enemyCount] call BIS_fnc_spawnGroup;
			{ _x execVM "loadouts\cadet.sqf"; } foreach units _grp;
		};
		case "Constables": {
			_grp = [getMarkerPos _spawnPos, _side, _enemyCount] call BIS_fnc_spawnGroup;
			{ _x execVM "loadouts\constable.sqf"; } foreach units _grp;
		};
		case "Lieutenants": {
			_grp = [getMarkerPos _spawnPos, _side, _enemyCount] call BIS_fnc_spawnGroup;
			{ _x execVM "loadouts\lieutenant.sqf"; } foreach units _grp;
		};
		case "Rebels": {
			_grp = [getMarkerPos _spawnPos, _side, _enemyCount] call BIS_fnc_spawnGroup;
			{ _x execVM "loadouts\rebel.sqf"; } foreach units _grp;
		};
		case "Hunter HMG": {
			_hunter = [getMarkerPos _spawnPos, 0, "B_MRAP_01_hmg_F", WEST] call BIS_fnc_spawnVehicle;
			_grp = [getMarkerPos _spawnPos, _side, 2] call BIS_fnc_spawnGroup;
			_hunter join _grp;
			{ _x execVM "loadouts\lieutenant.sqf"; } foreach units _grp;
		};
		case "Hummingbird": {
			// Spawn invis helipad to land on.
			_helipad = createVehicle ["Land_HeliPadEmpty_F", getMarkerPos _attackmarker, [], 0, "NONE"];

			// Spawn helicopter and crew.
			_helisv = [getMarkerPos _spawnPos, 180, "B_Heli_Light_01_F", WEST] call BIS_fnc_spawnVehicle;  
			_heli = _helisv select 0;
			_heliCrew = _helisv select 1;
			_heliGroup = _helisv select 2;

			// Spawn reinforcements and get them in the helicopter.
			_grp = [getMarkerPos _spawnPos, blufor, 6] call BIS_fnc_spawnGroup;
			{_x assignAsCargo _heli; _x moveInCargo _heli;} forEach units _grp;
			{_x allowFleeing 0} forEach units _grp;

			_allHeliUnits = units _heliGroup + units _grp;
			{ _x execVM "loadouts\constable.sqf"; } foreach _allHeliUnits;

			_wp1 = _heliGroup addWaypoint [getMarkerPos _attackmarker, 0];  
			_wp1 setWaypointSpeed "FULL";  
			_wp1 setWaypointType "GETOUT";
			_grp leaveVehicle _heli;
		};
		case "Hellcat": {
			_helisv = [getMarkerPos _spawnPos, 180, "I_Heli_light_03_unarmed_F", EAST] call BIS_fnc_spawnVehicle;  
			_heli = _helisv select 0;
			_heliCrew = _helisv select 1;
			_grp = _helisv select 2;
			{_x allowFleeing 0} forEach units _grp;

			{ _x execVM "loadouts\lieutenant.sqf"; } foreach units _grp;

			_wp1 = _grp addWaypoint [getMarkerPos _attackmarker, 0];  
			_wp1 setWaypointSpeed "NORMAL";  
			_wp1 setWaypointType "MOVE";

			_wp2 = _grp addWaypoint [getMarkerPos _spawnPos, 0];  
			_wp2 setWaypointSpeed "NORMAL";  
			_wp2 setWaypointType "MOVE";

			_wp3 = _grp addWaypoint [getMarkerPos _attackmarker, 0];  
			_wp3 setWaypointSpeed "NORMAL";  
			_wp3 setWaypointType "CYCLE";
		};
		case "50cal": {
			_grp = [getMarkerPos _spawnPos, _side, (configFile >> "CfgGroups" >> "WEST" >> "Guerilla" >> "Motorized_MTP" >> "IRG_Technicals")] call BIS_fnc_spawnGroup;
		};
		case "Unarmed": {
			_grp = [getMarkerPos _spawnPos, _side, _enemyCount] call BIS_fnc_spawnGroup;
			{ _x execVM "loadouts\unarmed.sqf"; } foreach units _grp;
		};
		case "SWAT": {
			_grp = [getMarkerPos _spawnPos, _side, _enemyCount] call BIS_fnc_spawnGroup;
			{ _x execVM "loadouts\swat.sqf"; } foreach units _grp;
		};
		case "Pistol Bangers": {
			_grp = [getMarkerPos _spawnPos, _side, _enemyCount] call BIS_fnc_spawnGroup;
			{ _x execVM "loadouts\pistolbanger.sqf"; } foreach units _grp;
		};
		case "Bounty Hunters": {
			_grp = [getMarkerPos _spawnPos, _side, _enemyCount] call BIS_fnc_spawnGroup;
			{ _x execVM "loadouts\bountyhunter.sqf"; } foreach units _grp;
		};
		case "Ghost Hawk": {
			_helisv = [getMarkerPos _spawnPos, 180, "B_Heli_Transport_01_F", WEST] call BIS_fnc_spawnVehicle;  
			_heli = _helisv select 0;
			_heliCrew = _helisv select 1;
			_grp = _helisv select 2;
			{_x allowFleeing 0} forEach units _grp;

			{ _x execVM "loadouts\lieutenant.sqf"; } foreach units _grp;

			_wp1 = _grp addWaypoint [getMarkerPos _attackmarker, 0];  
			_wp1 setWaypointSpeed "NORMAL";  
			_wp1 setWaypointType "SAD";
		};
		case "Almost Victory": {
			if ((west countSide allUnits) == 0) then {
				[["VICTORY<br>",["You have succesfully completed the mission!"]]] spawn BIS_fnc_typeText;
				sleep 10;
				["isVictory",true,2] call BIS_fnc_endMission;
			};
		};
	};

	_vehHint = format ["<t align='center' color='#40E0D0' shadow='2' size='1.75'>Wave: " + str _wave + " - " + _type + "</t><br/>" + _text];
	GlobalHint = _vehHint;
	publicVariable "GlobalHint";
	hint parseText _vehHint;
	
	_waypoint1 = _grp addWaypoint [getmarkerpos _attackmarker, 0];  _waypoint1 setWayPointBehaviour "AWARE";  _waypoint1 setWayPointSpeed "FULL";  _waypoint1 setWayPointType "SAD";

	sleep _timer; 
};