package materialhx.widget;

import js.Browser;
import materialhx.css.TextFieldHelperTextStyle;
import materialhx.html.HTMLTools;
import materialhx.mdc.textfield.MDCTextFieldHelperText;


class TextFieldHelperText extends Widget {
    public var text(get, set):String;
    public var component(default, null):MDCTextFieldHelperText;

    public function new(text:String) {
        super(Browser.document.createElement("p"));

        _element.classList.add(TextFieldHelperTextStyle.HELPER_TEXT);
        _element.setAttribute("aria-hidden", "true");
        _element.id = HTMLTools.randomID();

        this.text = text;
        component = new MDCTextFieldHelperText(_element);
    }

    function get_text():String {
        return _element.textContent;
    }

    function set_text(value:String):String {
        return _element.textContent = value;
    }
}
