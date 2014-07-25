$modelname "thd2\yyy.mdl"
$scale 1.00
$cdmaterials "models/thd2"

$body "Body" "F:\dota\thd2\models\yyy.smd"
$sequence "Idle" "F:\dota\thd2\models\yyy.smd" fps 30 ACT_IDLE 1

$surfaceprop "metal"

$keyvalues { "prop_data" {"base" "metal.small"}

$collisionmodel "F:\dota\thd2\models\yyy.smd" {
	$concave
	$mass 100.000
}
