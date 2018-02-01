
sleep 1;
{ _x setPos (getmarkerPos "town") } forEach allUnits;
start removeAction 0 forEach allUnits;

started = "true";
publicVariable "started"; 

deletevehicle start;

{if (!isPlayer _x) then {
    deletevehicle _x;
};} forEach allUnits;