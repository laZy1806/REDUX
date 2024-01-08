 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//USE IN CREATE EVENT FOR OBJECT
///@func curveList(MAXCALCULATIONSALLOWED)
function scrCurveList(maxSize = 100) {
	evaluate = array_create(maxSize, 0) //set MAX curves allowed 
	
	curveCalculation = function(curve, percent, calcNumber) {
		///@func curveCalculation(curve, percent, calcNumber)
		if percent >= 1 evaluate[calcNumber] += 1/percent
		else evaluate[calcNumber] += percent	//allows for input to either be 1/x or x alone.
		return animcurve_channel_evaluate(curve, evaluate[calcNumber])
		/* 
		this is a barebones curve calculator, and is better for one time use to 
		reduce redundancy of calculating your own difference to apply
		*/
	}
	isCurveFinished = function(calcNumber) {
		///@func isCurveFinished(num)
		return evaluate[calcNumber]	> 1
	}
	resetCalcNumber = function(num) {
		///@func resetCalcNumber(num)
		evaluate[num] = 0
	}
	difCalculation = function(_end, _start, curve, percent, calcNumber){
		///@func difCalculation(end, start, curve, percent, calcNumber) 
		return (_end - _start) * curveCalculation(curve, percent, calcNumber) 
		/* 
		extension of curveCalc, but reduces redundancy of having to make var for calcualting difference in OBJ.
		should be used when you want to apply a curve to something that will have changing values
		like moving bones 
		*/
	}
}