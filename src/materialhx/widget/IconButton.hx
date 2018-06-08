package materialhx.widget;

import js.html.ButtonElement;
import materialhx.html.IconButtonBuilder;
import materialhx.mdc.iconbutton.MDCIconButtonToggle;
import materialhx.mdc.ripple.MDCRipple;


class IconButton extends Widget implements IDisposable {
    public var component(default, null):Null<MDCIconButtonToggle>;
    public var disabled(get, set):Bool;

    var buttonElement:ButtonElement;

    public function new(icon:IIcon, ?onConfig:IconButtonConfig,
            ?offConfig:IconButtonConfig) {
        super(IconButtonBuilder.iconButton());
        buttonElement = cast(element, ButtonElement);

        _element.appendChild(icon.element);

        if (onConfig != null && offConfig != null) {
            IconButtonBuilder.upgradeToToggle(
                element, icon.element.tagName, onConfig, offConfig);
            component = new MDCIconButtonToggle(_element);
        } else {
            var ripple = new MDCRipple(element);
            ripple.unbounded = true;
        }
    }

    public function dispose() {
        if (component != null) {
            component.destroy();
        }
    }

    function get_disabled():Bool {
        return buttonElement.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return buttonElement.disabled = value;
    }
}
