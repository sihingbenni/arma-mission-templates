/*
 * Author: Katalam
 * Loadout - USAM: (Squad) Medic
 */
params [
	["_player", objNull, [objNull]],
	["_gearlevel", false, [false]]
];

/** VARIABLES */
_player setVariable ["ACE_medical_medicClass", 2, true];
_player setVariable ["ACE_GForceCoef", 0.7, true];
_player setVariable ["ACE_isEngineer", 0, true];
_player setVariable ["ACE_isEOD", false, true];
_player setVariable ["KAT_loadout", "USAM_MED", true];

_player setUnitRank "CORPORAL";

/** CLOTHING */
_player forceAddUniform selectRandom ["VSM_Multicam_Crye_Camo", "VSM_Multicam_Crye_SS_Camo"];
_player addVest "VSM_LBT6094_operator_Multicam";
_player addHeadgear selectRandom ["VSM_OPS_2_multicam", "VSM_OPS_multicam"];
_player addBackpackGlobal "VSM_Multicam_Backpack_Kitbag";

/** COMMS */
_player linkItem "ItemMap";
_player linkItem "ItemCompass";
_player linkItem "ItemWatch";
_player linkItem "TFAR_anprc152";
_player linkItem "ItemMicroDAGR";
_player addWeapon "Binocular";
_player addItemToUniform "ACE_MapTools";
_player addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 2 do {
	_player addItemToUniform "ACE_CableTie";
};

/** EARPLUGS */
_player addItemToUniform "ACE_EarPlugs";

/** MEDICAL */
for "_i" from 1 to 48 do {
	_player addItemToBackpack "ACE_packingBandage";
	_player addItemToBackpack "ACE_elasticBandage";
};
for "_i" from 1 to 10 do {
	_player addItemToBackpack "ACE_morphine";
};
for "_i" from 1 to 8 do {
	_player addItemToVest "ACE_epinephrine";
};
_player addItemToVest "adv_aceCPR_AED";
_player addItemToVest "ACE_surgicalKit";
for "_i" from 1 to 12 do {
	_player addItemToBackpack "ACE_plasmaIV_500";
};
for "_i" from 1 to 4 do {
	_player addItemToBackpack "ACE_tourniquet";
};
for "_i" from 1 to 15 do {
	_player addItemToBackpack "adv_aceSplint_splint";
};

/** THROWABLES */
for "_i" from 1 to 4 do {
	_player addItemToVest "rhs_mag_an_m8hc";
};
for "_i" from 1 to 2 do {
	_player addItemToVest "rhs_mag_m18_green";
};

/** PRIMARY */
_player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG";

_player addWeapon "rhs_weap_m4a1_carryhandle";
_player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
_player addPrimaryWeaponItem "rhsusf_acc_acog";

for "_i" from 1 to 6 do {
	_player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG";
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
_player addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";
_player addWeapon "rhsusf_weap_m9";
for "_i" from 1 to 2 do {
	_player addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";
};

true;
