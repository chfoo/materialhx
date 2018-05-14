package materialhx.widget;

import js.Browser;
import js.html.OptionElement;


class SelectMenuOption extends Widget {
    var optionElement:OptionElement;

    public function new(value:String = "", label:String = "",
            disabled:Bool = false, selected:Bool = false) {
        optionElement = Browser.document.createOptionElement();

        super(optionElement);

        optionElement.value = value;
        optionElement.textContent = label;
        optionElement.disabled = disabled;
        optionElement.selected = selected;
    }

    function get_value():String {
        return optionElement.value;
    }

    function set_value(value:String):String {
        return optionElement.value = value;
    }

    function get_label():String {
        return optionElement.textContent;
    }

    function set_label(value:String):String {
        return optionElement.textContent = value;
    }

    function get_disabled():Bool {
        return optionElement.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return optionElement.disabled = value;
    }

    function get_selected():Bool {
        return optionElement.selected;
    }

    function set_selected(value:Bool):Bool {
        return optionElement.selected = value;
    }
}
