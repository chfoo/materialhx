package materialhx.widget;

import js.html.LabelElement;
import materialhx.css.FloatingLabelStyle;
import materialhx.html.FloatingLabelBuilder;
import materialhx.mdc.floatinglabel.MDCFloatingLabel;


class FloatingLabel extends Widget {
    public var component(default, null):MDCFloatingLabel;
    public var text(get, set):String;
    public var style(default, null):StyleModifier<FloatingLabelModifier>;

    public function new(label:String = "", ?inputWidget:IInputWidget) {
        super(FloatingLabelBuilder.floatingLabel());

        var labelElement = cast(_element, LabelElement);
        labelElement.textContent = label;

        if (inputWidget != null) {
            labelElement.htmlFor = inputWidget.inputElement.id;
        }

        component = new MDCFloatingLabel(_element);
        style = new StyleModifier(_element);
    }

    function get_text():String {
        return _element.textContent;
    }

    function set_text(value:String):String {
        return _element.textContent = value;
    }
}
