package materialhx.mdc.slider;

import materialhx.mdc.base.MDCFoundation;


@:native("mdc.slider.MDCSliderFoundation")
extern class MDCSliderFoundation extends MDCFoundation {
    function layout():Void;
    function getValue():Float;
    function setValue(value:Float):Void;
    function getMax():Float;
    function setMax(max:Float):Void;
    function getMin():Float;
    function setMin(min:Float):Float;
    function getStep():Float;
    function setStep(step:Float):Void;
    function isDisabled():Bool;
    function setDisabled(disabled:Bool):Void;
    function setupTrackMarker():Void;
}
