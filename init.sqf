// by commy2

if (isDedicated) exitWith {};

BWA3_EarRingingPlaying = false;

AGM_EarPlugsin = false;
AGM_hasEarBuds = false;
player addEventHandler ["firedNear", {_this call AGM_Hearing_fnc_firedNearEH}];
player addEventHandler ["explosion", {_this call AGM_Hearing_fnc_explosionEH}];
