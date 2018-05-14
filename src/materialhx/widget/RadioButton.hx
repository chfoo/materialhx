package materialhx.widget;

import js.html.InputElement;
import materialhx.html.RadioButtonBuilder;
import materialhx.mdc.radio.MDCRadio;


class RadioButton extends Widget implements IInputWidget {
    public var inputElement(get, never):InputElement;
    public var checked(get, set):Bool;
    public var disabled(get, set):Bool;

    var _inputElement:InputElement;
    public var component(default, null):MDCRadio;

    public function new(?setName:String) {
        var elements = RadioButtonBuilder.radio();
        _inputElement = elements.input;

        super(elements.root);

        component = new MDCRadio(_element);

        if (setName != null) {
            _inputElement.name = setName;
        }
    }

    function get_inputElement():InputElement {
        return _inputElement;
    }

    function get_checked():Bool {
        return component.checked;
    }

    function set_checked(value:Bool):Bool {
        return component.checked = value;
    }

    function get_disabled():Bool {
        return component.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return component.disabled = value;
    }
}
