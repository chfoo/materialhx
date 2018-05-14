package materialhx.widget;

import materialhx.css.FABStyle;
import materialhx.mdc.ripple.MDCRipple;
import materialhx.html.FABBuilder;


class FAB extends Widget {
    public var icon(get, set):IIcon;
    public var style(default, null):StyleModifier<FABModifier>;

    var _icon:IIcon;

    public function new(icon:IIcon) {
        super(FABBuilder.fab());

        new MDCRipple(_element);
        style = new StyleModifier(_element);

        this.icon = icon;
    }

    function get_icon():IIcon {
        return _icon;
    }

    function set_icon(value:IIcon):IIcon {
        if (_icon != null) {
            remove(_icon);
        }

        _icon = value;

        FABBuilder.upgradeToFABIcon(_icon.element);
        push(_icon);

        return _icon;
    }
}
