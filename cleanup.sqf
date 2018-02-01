while {true} do
	{
	sleep 10;
	
		{
		_sandGlass = _x getVariable "RYD_DeathTime";
		if (isNil "_sandGlass") then 
			{
			_x setVariable ["RYD_DeathTime",time]
			}
		else
			{
			if ((time - _sandGlass) > 60) then
				{
				deleteVehicle _x
				}

			}
		}
	forEach allDead;
	};