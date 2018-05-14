package materialhx.widget;

import js.html.TextAreaElement;
import materialhx.css.TextFieldStyle;
import materialhx.html.TextFieldBuilder;
import materialhx.widget.TextField;


class TextFieldTextArea extends BaseTextField implements IInputWidget {
    public var inputElement(get, never):TextAreaElement;
    public var style(default, null):StyleModifier<TextFieldModifier>;
    public var label(get, set):String;

    var _inputElement:TextAreaElement;
    var floatingLabel:FloatingLabel;

    public function new(label:String = "") {
        var elements = TextFieldBuilder.textFieldTextArea();
        super(elements.root);
        _inputElement = elements.textArea;

        floatingLabel = new FloatingLabel(label, this);
        push(floatingLabel);
        initComponent(_element, _inputElement);

        style = new StyleModifier(_element);
    }

    function get_inputElement():TextAreaElement {
        return _inputElement;
    }

    function get_label():String {
        return floatingLabel.text;
    }

    function set_label(value:String):String {
        return floatingLabel.text = value;
    }
}
