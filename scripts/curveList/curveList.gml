 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//USE IN CREATE EVENT FOR OBJECT
///@func curveList(MAXCALCULATIONSALLOWED)
function curveList(maxSize = 100) {
	evaluate = array_create(maxSize, 0) //set MAX curves allowed 
	
	curveCalculation = function(curve, percent, calcNumber) {
		///@func curveCalculation(curve, percent, calcNumber)
		evaluate[calcNumber] += percent
		return animcurve_channel_evaluate(curve, evaluate[calcNumber])
	}
	isCurveFinished = function(calcNumber) {
		///@func isCurveFinished(num)
		return evaluate[calcNumber]	> 1
	}
	resetCalcNumber = function(num) {
		///@func resetCalcNumber(num)
		evaluate[num] = 0
	}
	difCalculation = function(_start, _end){
		///@func difCalculation(num)
		return (_end - _start) * curveCalculation()
	}
}