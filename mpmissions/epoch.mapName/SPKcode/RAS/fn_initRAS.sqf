/*
	Title:			SPK_RAS
	Author: 		Sp4rkY
	Description:	Random Ambient Sounds
					for Arma 3 Epoch
	Version:		0.253
__________________________________________________________________*/

[] spawn {
	rasIsPlaying = false;
	call compile preprocessFileLineNumbers "SPKcode\SPK_RAS\RAS_play.sqf";
	if(alive player)then{
		while{true}do{
			if(isNil "rasNext")then[{
				rasNext = true;
				call fnc_rasPlay
			},{
				waitUntil{rasNext};
				removeMusicEventHandler ["MusicStop",rasActive];
				call fnc_rasPlay;
			}]
		}
	};
};
