if (not(_this select 0 == "")) then {
	//"testPlugin" callExtension format["event;type=player_connected;id=%1;name=%2", _this select 0, _this select 1];
	_arr = [
		["type", "player_connected"],
		["uid", _this select 0],
		["name", _this select 1]
	];

	_arr call xea_fnc_sendEvent;
};
