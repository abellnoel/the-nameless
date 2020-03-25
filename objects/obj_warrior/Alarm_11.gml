/// @description Block meter decay
if (status = STATUS_EFFECT.BLOCKING) { //prevents reductions in meter when not blocking
	blockMeter -= 1;
}