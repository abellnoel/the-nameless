/// @description Block meter decay/regen
if (status = STATUS_EFFECT.BLOCKING) { //prevents reductions in meter when not blocking
	blockMeter -= 1;
}
else if (blockMeter < maxBlock) { //prevents additions to meter past max
	blockMeter += 1;
}