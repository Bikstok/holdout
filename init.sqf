#define execnow call compile preprocessfilelinenumbers

west setFriend [independent, 0];
independent setFriend [west, 0];
east setFriend [independent, 1];
independent setFriend [east, 1];


// http://community.bistudio.com/wiki/enablesaving
enableSaving [false, false];


// server scripts only
if (isServer) then {
	[] execVM "cleanup.sqf";
};

// player scripts only
if (!isDedicated) then {
	waitUntil {!isNull player};
	waitUntil {getPlayerUID player != ""};
	
	player setSkill 0;
	{ player disableAI _x; } forEach ["anim", "move", "target", "autotarget", "fsm"];

	// run these scripts only once per player or after respawn (LRM safe)
	player spawn {
		sleep 2;
		player execVM "setup\playerscripts.sqf";

		player addEventHandler ["respawn", {
			sleep 2;
			player execVM "setup\playerscripts.sqf";
		}];
	};
};