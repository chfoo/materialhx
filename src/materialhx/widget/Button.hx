package materialhx.widget;

import js.html.ButtonElement;
import materialhx.css.ButtonStyle;
import materialhx.html.ButtonBuilder;
import materialhx.mdc.ripple.MDCRipple;


class Button extends Widget {
    public var text(get, set):String;
    public var icon(get, set):IIcon;
    public var disabled(get, set):Bool;
    public var style(default, null):StyleModifier<ButtonModifier>;

    var buttonElement:ButtonElement;
    var _icon:IIcon;

    public function new(text:String = "") {
        super(ButtonBuilder.button());

        buttonElement = cast(_element, ButtonElement);

        MDCRipple.attachTo(_element);
        style = new StyleModifier(_element);

        this.text = text;
    }

    function get_text():String {
        return _element.textContent;
    }

    function set_text(value:String):String {
        return _element.textContent = value;
    }

    function get_icon():IIcon {
        return _icon;
    }

    function set_icon(value:IIcon):IIcon {
        if (_icon != null) {
            remove(_icon);
        }

        _icon = value;

        ButtonBuilder.upgradeIcon(_icon.element);
        unshift(_icon);

        return _icon;
    }

    function get_disabled():Bool {
        return buttonElement.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return buttonElement.disabled = value;
    }
}
