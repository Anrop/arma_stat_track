while { true } do {
	{
		_unit = [-1, name _x];
		if (isPlayer _x) then {
			_unit = [getPlayerUID _x, _unit select 1];
		};

		_arr = [
			["type", "unit_position"],
			["pos_x", (getPosASL _x select 0)],
			["pos_y", (getPosASL _x select 1)],
			["pos_z", (getPosASL _x select 2)],
			["nid", netId _x],
			["uid", _unit select 0],
			["name", _unit select 1]
		];

	} forEach allUnits;
	sleep _this;
};