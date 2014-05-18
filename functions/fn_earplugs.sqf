// by commy2
///Edited by Hope Johnson 5/17/2014
_vehicle = _this select 0;/// Might not need this


////Check for Inventory Item, if not give message.
if !("i_earbuds_f" in items player) exitwith { 
	[localize "STR_AGM_NoBuds", true] call AGM_Core_fnc_displayText;
	AGM_EarPlugsin = false;
	0.5 fadeSound 1;
	0.5 fadeSpeech 1;
};
///Buds already in and removing them.
if (AGM_EarPlugsin) exitWith {
	[localize "STR_AGM_Earbuds_Off", true] call AGM_Core_fnc_displayText;
	AGM_EarPlugsin = false;
	0.5 fadeSound 1;
	0.5 fadeSpeech 1;

};
///Buds not in and putting them in.
[localize "STR_AGM_Earbuds_On", true] call AGM_Core_fnc_displayText;
AGM_EarPlugsin = true;

0.5 fadeSound 0.1;
0.5 fadeSpeech 0.1;
