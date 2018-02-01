player setFatigue 0;
player enableFatigue false;
player setCustomAimCoef 0.7;

player addAction ["<t color='#ffff33'>Heal self</t>", {
	titleText ["Healing to full health in 5 seconds..", "PLAIN", .5]; sleep 5; (_this select 0) setDamage 0;
}];

player addAction ["<t color='#ffff33'>Refill ammo</t>", {
	{ player removeMagazine _x } forEach magazines player;
	_mag = primaryWeaponMagazine player;
	player addMagazines [_mag select 0, 10];
	player addMagazine ["HandGrenade", 1];
}];

player addAction ["<t color='#ffff33'>Toggle earplugs</t>", {
	if (soundVolume < 0.21) then { 0 fadeSound 1; }
	else { 0 fadeSound 0.2; };
	systemChat format["Sound volume changed to %1%2.", soundVolume * 100, "%"];
}];