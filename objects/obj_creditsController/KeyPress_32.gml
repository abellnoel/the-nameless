/// @description Speed up credits toggle
if (!finished) {
	if (scrollRate == originalScrollRate) {
		scrollRate *= 5;
	}
	else {
		scrollRate = originalScrollRate;
	}
}
