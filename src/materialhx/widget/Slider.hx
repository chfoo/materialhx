package materialhx.widget;

import materialhx.html.SliderBuilder;
import materialhx.mdc.slider.MDCSlider;


class Slider extends Widget {
    public var value(get, set):Float;
    public var min(get, set):Float;
    public var max(get, set):Float;
    public var step(get, set):Float;
    public var disabled(get, set):Bool;

    public var component(default, null):MDCSlider;

    public function new(label:String, min:Float = 0, max:Float = 100,
            now:Float = 0, discrete:Bool = false, markers:Bool = false) {

        super(SliderBuilder.slider(label, min, max, now));

        _element.appendChild(SliderBuilder.trackContainer(markers));
        _element.appendChild(SliderBuilder.thumbContainer(discrete));

        component = new MDCSlider(_element);
    }

    function get_value():Float {
        return component.value;
    }

    function set_value(value:Float):Float {
        return component.value = value;
    }

    function get_min():Float {
        return component.min;
    }

    function set_min(value:Float):Float {
        return component.min = value;
    }

    function get_max():Float {
        return component.max;
    }

    function set_max(value:Float):Float {
        return component.max = value;
    }

    function get_step():Float {
        return component.step;
    }

    function set_step(value:Float):Float {
        return component.step = value;
    }

    function get_disabled():Bool {
        return component.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return component.disabled = value;
    }

    public function layout() {
        component.layout();
    }

    public function stepUp(amount:Float = 1) {
        component.stepUp(amount);
    }

    public function stepDown(amount:Float = 1) {
        component.stepDown(amount);
    }
}
