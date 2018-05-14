package materialhx.widget;

import js.html.InputElement;
import materialhx.html.SwitchBuilder;


class Switch extends Widget implements IInputWidget {
    public var inputElement(get, never):InputElement;
    public var on(get, set):Bool;
    public var disabled(get, set):Bool;

    var _inputElement:InputElement;

    public function new() {
        var elements = SwitchBuilder.switch_();
        _inputElement = elements.input;
        super(elements.root);
    }

    function get_inputElement():InputElement {
        return _inputElement;
    }

    function get_on():Bool {
        return _inputElement.checked;
    }

    function set_on(value:Bool):Bool {
        return _inputElement.checked = value;
    }

    function get_disabled():Bool {
        return _inputElement.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return _inputElement.disabled = value;
    }
}
