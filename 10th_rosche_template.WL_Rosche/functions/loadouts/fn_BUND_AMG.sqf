/*
 * Author: Katalam
 * Loadout - BUND: Assistant Machinegunner
 */
params [
	["_player", objNull, [objNull]],
	["_gearlevel", false, [false]]
];

/** VARIABLES */
_player setVariable ["ACE_medical_medicClass", 0, true];
_player setVariable ["ACE_GForceCoef", 0.7, true];
_player setVariable ["ACE_isEngineer", 0, true];
_player setVariable ["ACE_isEOD", false, true];
_player setVariable ["KAT_loadout", "BUND_AMG", true];

_player setUnitRank "PRIVATE";

/** CLOTHING */
_player forceAddUniform selectRandom ["PBW_Uniform3_fleck", "PBW_Uniform3K_fleck", "PBW_Uniform4_fleck", "PBW_Uniform4K_fleck"];
_player addVest "BWA3_Vest_MachineGunner_Fleck";
_player addHeadgear "BWA3_M92_Fleck";
_player addBackpackGlobal "BWA3_Kitbag_Fleck";

/** COMMS */
_player linkItem "ItemMap";
_player linkItem "ItemCompass";
_player linkItem "ItemWatch";
_player linkItem "TFAR_anprc152";
_player linkItem "ItemMicroDAGR";
_player addWeapon "ACE_Vector";
_player addItemToUniform "ACE_MapTools";
_player addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 2 do {
	_player addItemToUniform "ACE_CableTie";
};

/** BACKPACK */
_player addItemToBackpack "ACE_SpareBarrel";
_player addItemToBackpack "ACE_EntrenchingTool";
for "_i" from 1 to 5 do {
	_player addItemToBackpack "BWA3_120Rnd_762x51_Tracer_soft";
};
_player addItemToVest "BWA3_120Rnd_762x51_Tracer_soft";

/** EARPLUGS */
_player addItemToUniform "ACE_EarPlugs";

/** MEDICAL */
for "_i" from 1 to 8 do {
	_player addItemToUniform "ACE_packingBandage";
};
for "_i" from 1 to 5 do {
	_player addItemToUniform "ACE_elasticBandage";
};
for "_i" from 1 to 2 do {
	_player addItemToUniform "ACE_tourniquet";
	_player addItemToUniform "adv_aceSplint_splint";
};
_player addItemToUniform "ACE_morphine";

/** THROWABLES */
for "_i" from 1 to 2 do {
	_player addItemToVest "BWA3_DM25";
};
_player addItemToVest "HandGrenade";

/** PRIMARY */
_player addItemToVest "hlc_30rnd_556x45_EPR_G36";

_player addWeapon "hlc_rifle_G36A1";
_player addPrimaryWeaponItem "HLC_Optic_G36dualoptic35x2d";
for "_i" from 1 to 8 do {
	_player addItemToVest "hlc_30rnd_556x45_EPR_G36";
};

/** NIGHT FIGHT STUFF */
if (_gearlevel) then {
	_player addItemToUniform "ACE_Flashlight_XL50";
	_player linkItem "ACE_NVG_Wide";
	_player addItemToUniform "ACE_IR_Strobe_Item";
	for "_i" from 1 to 3 do {
		_player addItemToVest "Chemlight_red";
	};
};

/** SIDEARM */
_player addItemToUniform "BWA3_15Rnd_9x19_P8";
_player addWeapon "BWA3_P8";
for "_i" from 1 to 2 do {
	_player addItemToVest "BWA3_15Rnd_9x19_P8";
};

true;
