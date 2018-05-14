package materialhx.mdc.slider;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCSliderEvent(String) to String {
    var Input = "MDCSlider:input";
    var Change = "MDCSlider:change";
}


@:native("mdc.slider.MDCSlider")
extern class MDCSlider extends MDCComponent {
    var value:Float;
    var min:Float;
    var max:Float;
    var step:Float;
    var disabled:Bool;

    function layout():Void;
    function stepUp(amount:Float = 1):Void;
    function stepDown(amount:Float = 1):Void;

    static function attachTo(root:js.html.Element):MDCSlider;
}
