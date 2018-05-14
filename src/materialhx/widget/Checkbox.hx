package materialhx.widget;

import js.html.InputElement;
import materialhx.html.CheckboxBuilder;
import materialhx.mdc.checkbox.MDCCheckbox;



class Checkbox extends Widget implements IInputWidget implements IDisposable {
    public var checked(get, set):Bool;
    public var indeterminate(get, set):Bool;
    public var disabled(get, set):Bool;

    public var inputElement(get, never):InputElement;

    var _inputElement:InputElement;
    public var component(default, null):MDCCheckbox;

    public function new() {
        var elements = CheckboxBuilder.checkbox();
        _inputElement = elements.input;

        super(elements.root);

        component = new MDCCheckbox(_element);
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

    function get_indeterminate():Bool {
        return component.indeterminate;
    }

    function set_indeterminate(value:Bool):Bool {
        return component.indeterminate = value;
    }

    function get_disabled():Bool {
        return component.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return component.disabled = value;
    }

    public function dispose() {
        component.destroy();
    }
}
