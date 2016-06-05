fnc_rasPlay = {
	#include "RAS_settings.sqf"
	private["_minT","_maxT","_rndT","_rndAT","_rndTrck","_cfgSndRndT","_secT"];
	_rndAT = (_addT *60);
	_minT = (_minGap *60 + (random _rndAT));
	_maxT = (_maxGap *60);
	_rndT = (_minT + _maxT);
	_secT = (_secGap *60);
	_cfgSndRndT = (_rndT + _secT);
	if(_rasStyle)then[{
		if(rasIsPlaying)exitWith{};
		rasIsPlaying = true;
		rasNext = false;
		uiSleep _rndT;
		_rndTrck = rasTracks call BIS_fnc_selectRandom;
		playMusic _rndTrck;	
		rasActive = addMusicEventHandler ["MusicStop",{rasIsPlaying = false; rasNext = true}]	
	},{
		if(rasIsPlaying)exitWith{};
		rasIsPlaying = true;
		rasNext = false;
		uiSleep _cfgSndRndT;
		_cfgSndTdone = true;
		_rndTrck = rasTracks call BIS_fnc_selectRandom;
		playSound _rndTrck;
		if(_cfgSndTdone)then[{
			rasIsPlaying = false;
			rasNext = true;
			_cfgSndTdone = false;
		},{
			waitUntil{_cfgSndTdone};
			rasIsPlaying = false;
			rasNext = true;
			_cfgSndTdone = false;
		}]
	}]
};
