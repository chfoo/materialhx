package materialhx.widget;

import js.html.Element;
import js.html.InputElement;
import materialhx.css.TextFieldIconStyle;
import materialhx.css.TextFieldStyle;
import materialhx.html.TextFieldBuilder;
import materialhx.mdc.textfield.MDCTextField;


class BaseTextField extends Widget {
    public var value(get, set):String;
    public var disabled(get, set):Bool;
    public var valid(get, set):Bool;
    public var required(get, set):Bool;
    public var helperTextContent(get, set):String;
    public var helperTextWidget(get, set):TextFieldHelperText;

    var component:MDCTextField;
    var _baseInputElement:Element;
    var _helperTextWidget:TextFieldHelperText;

    public function new(element:Element) {
        super(element);
    }

    function initComponent(element:Element, inputElement:Element) {
        component = new MDCTextField(element);
        _baseInputElement = inputElement;
    }

    function get_value():String {
        return component.value;
    }

    function set_value(value:String):String {
        return component.value = value;
    }

    function get_disabled():Bool {
        return component.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return component.disabled = value;
    }

    function get_valid():Bool {
        return component.valid;
    }

    function set_valid(value:Bool):Bool {
        return component.valid = value;
    }

    function get_required():Bool {
        return component.required;
    }

    function set_required(value:Bool):Bool {
        return component.required = value;
    }

    function get_helperTextContent():String {
        return component.helperTextContent;
    }

    function set_helperTextContent(value:String):String {
        return component.helperTextContent = value;
    }

    function get_helperTextWidget():TextFieldHelperText {
        return _helperTextWidget;
    }

    function set_helperTextWidget(value:TextFieldHelperText):TextFieldHelperText {
        if (value != null) {
            _baseInputElement.setAttribute("aria-controls", value.element.id);
            _baseInputElement.setAttribute("aria-describedby", value.element.id);
        } else {
            _baseInputElement.removeAttribute("aria-controls");
            _baseInputElement.removeAttribute("aria-describedby");
        }

        return _helperTextWidget = value;
    }

    public function layout() {
        component.layout();
    }
}


class TextField extends BaseTextField implements IInputWidget {
    public var inputElement(get, never):InputElement;
    public var style(default, null):StyleModifier<TextFieldModifier>;
    public var label(get, set):String;

    var _inputElement:InputElement;
    var floatingLabel:FloatingLabel;

    public function new(label:String = "", fullWidth:Bool = false) {
        var elements = TextFieldBuilder.textField();
        super(elements.root);
        _inputElement = elements.input;
        style = new StyleModifier(_element);

        if (fullWidth) {
            this.label = label;
            style.add(TextFieldModifier.Fullwidth);
        } else {
            floatingLabel = new FloatingLabel(label, this);
            push(floatingLabel);
            push(new LineRipple());
        }

        initComponent(_element, _inputElement);
    }

    function get_inputElement():InputElement {
        return _inputElement;
    }

    function get_label():String {
        if (floatingLabel != null) {
            return floatingLabel.text;
        } else {
            return _inputElement.placeholder;
        }
    }

    function set_label(value:String):String {
        if (floatingLabel != null) {
            return floatingLabel.text = value;
        } else {
            _inputElement.setAttribute("aria-label", value);
            return _inputElement.placeholder = value;
        }
    }

    public function setIcon(icon:TextFieldIcon, trailing:Bool = false) {
        removeIcon();

        style.remove(TextFieldModifier.WithLeadingIcon);
        style.remove(TextFieldModifier.WithTrailingIcon);

        if (trailing) {
            style.add(TextFieldModifier.WithTrailingIcon);

            if (floatingLabel != null) {
                // Insert before the ripple
                insertBefore(icon, last());
            } else {
                push(icon);
            }
        } else {
            style.add(TextFieldModifier.WithLeadingIcon);
            unshift(icon);
        }
    }

    function removeIcon() {
        var result = _element.querySelector('.${TextFieldIconStyle.ICON}');

        if (result != null) {
            result.remove();
        }
    }
}
