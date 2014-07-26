$cd "C:\Users\Jonathan\Desktop\compile\reimu"
$modelname "survivors/survivor_gambler.mdl"
$model "reimu.mdl" "reimu.smd"{
     flexfile "mdldecompiler_expressions.vta" {
     }
     mouth 0 "mouth"  ValveBiped.Bip01_Head1 0.000 1.000 0.000
}
$poseparameter body_pitch -90.00 90.00
$poseparameter body_yaw -90.00 90.00
$poseparameter head_pitch -90.00 90.00
$poseparameter head_yaw -90.00 90.00
$cdmaterials "models\survivors\gambler\"
$cdmaterials "models\survivors\"
$cdmaterials ""
$texturegroup skinfamilies
{
	{"darkbrown.vmt"
 "txHair.vmt"
 "txCloth.vmt"
 "txSLRope.vmt"
 "txBody.vmt"
 "white3.vmt"
 "beige.vmt"
 "txEyes.vmt"
 "lightblue.vmt"
 "txFaceEff.vmt"
 "txBall.vmt"
 "black.vmt"
 "tan.vmt"
}
	{"darkbrown.vmt"
 "txHair.vmt"
 "txCloth.vmt"
 "txSLRope.vmt"
 "txBody.vmt"
 "white3.vmt"
 "beige.vmt"
 "txEyes.vmt"
 "lightblue.vmt"
 "txFaceEff.vmt"
 "txBall.vmt"
 "black.vmt"
 "tan.vmt"
}
 }

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.42 -2.36 0.05 rotate 0.00 -89.37 -90.00
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.71 -5.15 -0.13 rotate 0.00 -80.00 -90.00
$attachment "survivor_light" "ValveBiped.Bip01_Spine2" 5.33 21.31 -0.00 rotate 0.00 -0.00 -0.00
$attachment "forward" "ValveBiped.forward" 0.00 -0.00 -0.00 rotate 0.00 0.00 -0.00
$attachment "pistol" "ValveBiped.Bip01_R_Thigh" -2.95 1.84 -4.61 rotate -3.66 -0.47 91.70
$attachment "L_weapon_bone" "ValveBiped.L_weapon_bone" 0.00 -0.00 -0.00 rotate 0.00 -0.00 -0.00
$attachment "weapon_bone" "ValveBiped.weapon_bone" 0.00 -0.00 -0.00 rotate -0.00 -0.00 0.00
$attachment "medkit" "ValveBiped.Bip01_Spine4" -0.65 -2.83 -1.16 rotate 5.03 77.16 0.00
$attachment "primary" "ValveBiped.Bip01_Spine4" 2.71 -4.36 -2.33 rotate -13.70 170.19 174.29
$attachment "attach_R_shoulderBladeAim" "ValveBiped.Bip01_Spine4" -8.88 0.88 -4.51 rotate -90.00 -102.85 0.00
$attachment "attach_L_shoulderBladeAim" "ValveBiped.Bip01_Spine4" -8.88 0.88 3.12 rotate -90.00 -102.85 0.00
$attachment "melee" "ValveBiped.Bip01_Spine4" 2.64 -3.12 4.45 rotate 24.08 175.37 97.14
$attachment "molotov" "ValveBiped.Bip01_Spine" -3.19 -2.44 7.01 rotate -63.44 -74.67 -101.41
$attachment "grenade" "ValveBiped.Bip01_Spine" -0.68 1.17 6.97 rotate -90.00 -175.23 0.00
$attachment "pills" "ValveBiped.Bip01_Spine" -2.63 0.63 -7.56 rotate -41.18 -88.48 -87.05
$attachment "lfoot" "ValveBiped.Bip01_L_Foot" 0.00 4.44 0.00 rotate -0.00 -0.00 -0.00
$attachment "rfoot" "ValveBiped.Bip01_R_Foot" 0.00 4.44 0.00 rotate 0.00 0.00 0.00
$attachment "muzzle_flash" "ValveBiped.Bip01_L_Hand" -0.00 -0.00 -0.00 rotate -0.00 -0.00 -0.00
$attachment "survivor_neck" "ValveBiped.Bip01_Neck1" -0.00 -0.00 0.00 rotate -0.00 0.00 0.00
$attachment "forward" "ValveBiped.forward" 0.00 -0.00 -0.00 rotate 0.00 0.00 -0.00
$attachment "bleedout" "ValveBiped.Bip01_Pelvis" 8.44 8.88 4.44 rotate -0.00 0.00 0.00
$attachment "survivor_light" "ValveBiped.Bip01_Spine2" 5.33 21.31 -0.00 rotate 0.00 -0.00 -0.00
$attachment "legL_B" "ValveBiped.attachment_bandage_legL" 0.00 0.00 0.00 rotate -90.00 -90.00 0.00
$attachment "armL_B" "ValveBiped.attachment_bandage_armL" 0.00 -0.00 0.00 rotate -90.00 -90.00 0.00
$attachment "armL_T" "ValveBiped.attachment_armL_T" 0.00 -0.00 -0.00 rotate -90.00 -90.00 0.00
$attachment "armR_T" "ValveBiped.attachment_armR_T" 0.00 0.00 -0.00 rotate -90.00 -90.00 0.00
$attachment "armL" "ValveBiped.Bip01_L_Forearm" -0.00 0.00 -0.00 rotate 0.00 -0.00 -0.00
$attachment "legL" "ValveBiped.Bip01_L_Calf" -0.00 0.00 0.00 rotate -0.00 0.00 -0.00
$attachment "thighL" "ValveBiped.Bip01_L_Thigh" -0.00 0.00 -0.00 rotate 0.00 0.00 -0.00
$attachment "spine" "ValveBiped.Bip01_Spine" -0.00 -0.00 0.00 rotate -90.00 -90.00 0.00
$includemodel "survivors/anim_gambler.mdl"
$includemodel "survivors/anim_gestures.mdl"
$surfaceprop "flesh"
$eyeposition -0.000 -0.000 70.000
$illumposition 0.555 -2.533 32.487
$sequence reimu "reimu" fps 30.00
$sequence ragdoll "ragdoll" ACT_DIERAGDOLL 1 fps 30.00
$ikchain rhand ValveBiped.Bip01_R_Hand knee  0.707 0.707 0.000
$ikchain lhand ValveBiped.Bip01_L_Hand knee  0.707 0.707 0.000
$ikchain rfoot ValveBiped.Bip01_R_Foot knee  0.707 -0.707 0.000
$ikchain lfoot ValveBiped.Bip01_L_Foot knee  0.707 -0.707 0.000
$ikchain ikclip ValveBiped.weapon_bone_Clip knee  0.707 -0.707 0.000
$collisionjoints "phymodel.smd" {

	$mass 100.0
	$inertia 10.00
	$damping 0.05
	$rotdamping 5.00
	$rootbone "valvebiped.bip01_pelvis"
	$jointrotdamping "valvebiped.bip01_pelvis" 3.00

	$jointmassbias "valvebiped.bip01_l_thigh" 7.00
	$jointrotdamping "valvebiped.bip01_l_thigh" 7.00
	$jointconstrain "valvebiped.bip01_l_thigh" x limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -10.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -55.00 25.00 0.00

	$jointmassbias "valvebiped.bip01_l_calf" 4.00
	$jointconstrain "valvebiped.bip01_l_calf" x limit -10.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit -5.00 5.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit -10.00 115.00 0.00

	$jointmassbias "valvebiped.bip01_r_thigh" 7.00
	$jointrotdamping "valvebiped.bip01_r_thigh" 7.00
	$jointconstrain "valvebiped.bip01_r_thigh" x limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -10.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -55.00 25.00 0.00

	$jointmassbias "valvebiped.bip01_r_calf" 4.00
	$jointconstrain "valvebiped.bip01_r_calf" x limit -10.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit -5.00 5.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit -10.00 115.00 0.00

	$jointmassbias "valvebiped.bip01_spine1" 8.00
	$jointconstrain "valvebiped.bip01_spine1" x limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine1" y limit -16.00 16.00 0.00
	$jointconstrain "valvebiped.bip01_spine1" z limit -20.00 30.00 0.00

	$jointmassbias "valvebiped.bip01_spine2" 9.00
	$jointconstrain "valvebiped.bip01_spine2" x limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" z limit -20.00 20.00 0.00

	$jointrotdamping "valvebiped.bip01_r_foot" 2.00
	$jointconstrain "valvebiped.bip01_r_foot" x limit -20.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -30.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -30.00 50.00 0.00

	$jointmassbias "valvebiped.bip01_l_clavicle" 4.00
	$jointrotdamping "valvebiped.bip01_l_clavicle" 6.00
	$jointconstrain "valvebiped.bip01_l_clavicle" x limit -15.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_l_clavicle" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_l_clavicle" z limit 0.00 45.00 0.00

	$jointmassbias "valvebiped.bip01_l_upperarm" 5.00
	$jointrotdamping "valvebiped.bip01_l_upperarm" 2.00
	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -15.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -40.00 32.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -80.00 25.00 0.00

	$jointmassbias "valvebiped.bip01_r_clavicle" 4.00
	$jointrotdamping "valvebiped.bip01_r_clavicle" 6.00
	$jointconstrain "valvebiped.bip01_r_clavicle" x limit -15.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_r_clavicle" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_r_clavicle" z limit 0.00 45.00 0.00

	$jointmassbias "valvebiped.bip01_l_forearm" 4.00
	$jointrotdamping "valvebiped.bip01_l_forearm" 4.00
	$jointconstrain "valvebiped.bip01_l_forearm" x limit -40.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -120.00 10.00 0.00

	$jointmassbias "valvebiped.bip01_r_upperarm" 5.00
	$jointrotdamping "valvebiped.bip01_r_upperarm" 2.00
	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -15.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -40.00 32.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -80.00 25.00 0.00

	$jointmassbias "valvebiped.bip01_r_forearm" 4.00
	$jointrotdamping "valvebiped.bip01_r_forearm" 4.00
	$jointconstrain "valvebiped.bip01_r_forearm" x limit -40.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -120.00 10.00 0.00

	$jointrotdamping "valvebiped.bip01_r_hand" 1.00
	$jointconstrain "valvebiped.bip01_r_hand" x limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit -35.00 35.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -50.00 50.00 0.00

	$jointmassbias "valvebiped.bip01_head1" 4.00
	$jointrotdamping "valvebiped.bip01_head1" 3.00
	$jointconstrain "valvebiped.bip01_head1" x limit -50.00 50.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -26.00 30.00 0.00

	$jointrotdamping "valvebiped.bip01_l_hand" 1.00
	$jointconstrain "valvebiped.bip01_l_hand" x limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit -35.00 35.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -50.00 50.00 0.00

	$jointrotdamping "valvebiped.bip01_l_foot" 2.00
	$jointconstrain "valvebiped.bip01_l_foot" x limit -20.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -30.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -30.00 50.00 0.00
}
