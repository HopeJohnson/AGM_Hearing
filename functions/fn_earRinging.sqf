/*
 * Author: KoffeinFlummi
 *
 * Creates ear ringing effect with set strength.
 *
 * Arguments:
 * 0: strength of ear ringing (Number between 0 and 1)
 *
 * Return Value:
 * none
 */
if (AGM_EarPlugsin) exitwith {};
_strength = _this select 0;

0.5 fadeSound 0.1;
0.5 fadeSpeech 0.1;

_strength spawn {
  sleep (_this * 8);
  (_this * 2) fadeSound .1;
  (_this * 2) fadeSpeech .1;
};

if (_strength > 0.75 and !BWA3_EarRingingPlaying) exitWith {
  BWA3_EarRingingPlaying = true;
  0 spawn {
    sleep 7;
    BWA3_EarRingingPlaying = false;
  };
};
if (_strength > 0.5 and !BWA3_EarRingingPlaying) exitWith {
  BWA3_EarRingingPlaying = true;
  0 spawn {
    sleep 5;
    BWA3_EarRingingPlaying = false;
  };
};
if (_strength > 0.2 and !BWA3_EarRingingPlaying) exitWith {
  playSound ["AGM_EarRinging_Weak", true];
  0 spawn {
    sleep 3;
    BWA3_EarRingingPlaying = false;
  };
};