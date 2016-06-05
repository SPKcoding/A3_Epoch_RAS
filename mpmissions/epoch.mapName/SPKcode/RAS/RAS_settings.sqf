private["_rasStyle","_tracks","_minGap","_maxGap","_addT","_secGap"];

//Recommended is to use CfgMusic (_rasStyle = true;)
//but it´s your choice :)

_rasStyle = true;	//choose which way you want to run the script -> true = CfgMusic | false = CfgSounds
					//CfgSound = every player is forced to hear the sound with your volume configuration in description.ext
					//CfgMusic = the player can decide about music-volume, also he can deactivate it

rasTracks = [		//insert the "names" of your soundfiles you described in description.ext "without" file-extension here /a.E: track1.ogg then type here "track1" / no comma after the last entry!
	"01",
	"02",
	"03",
	"04",
	"05",
	"06",
	"07",
	"08",
	"09",
	"10",
	"11",
	"12"
];

_minGap = 	5; 		//(number in minutes) Minimum gap between the tracks
_maxGap = 	10; 	//(number in minutes) Maximum gap between the tracks
_addT	=   4;   	//(number in minutes) Maximum random added time to the gap

//Triggers only if _rasStyle = false; is used
_secGap =	2;		//(number in minutes) Security time between tracks
