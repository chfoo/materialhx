package materialhx.widget;

import js.html.Element;
import materialhx.css.ChipStyle;
import materialhx.html.ChipBuilder;
import materialhx.mdc.chips.MDCChip;


class Chip extends Widget implements IDisposable {
    public var component(default, null):MDCChip;
    public var leadingIcon(get, set):IIcon;
    public var trailingIcon(get, set):IIcon;
    public var selected(get, set):Bool;

    var textElement:Element;
    var _leadingIcon:IIcon;
    var _trailingIcon:IIcon;

    public function new(text:String = "") {
        var elements = ChipBuilder.chip(text);
        textElement = elements.label;

        super(elements.root);

        component = new MDCChip(_element);
    }

    public function addCheckmark() {
        var element = ChipBuilder.checkmark();
        _element.insertBefore(element, textElement);
    }

    function get_leadingIcon():IIcon {
        return _leadingIcon;
    }

    function set_leadingIcon(value:IIcon):IIcon {
        if (_leadingIcon != null) {
            remove(_leadingIcon);
        }

        _leadingIcon = value;
        ChipBuilder.upgradeToLeadingIcon(_leadingIcon.element);
        unshift(_leadingIcon);

        return value;
    }

    function get_trailingIcon():IIcon {
        return _trailingIcon;
    }

    function set_trailingIcon(value:IIcon):IIcon {
        if (_trailingIcon != null) {
            remove(_trailingIcon);
        }

        _trailingIcon = value;
        ChipBuilder.upgradeToTrailingIcon(_trailingIcon.element);
        push(_trailingIcon);

        return value;
    }

    function get_selected():Bool {
        return _element.classList.contains(ChipModifier.Selected);
    }

    function set_selected(value:Bool):Bool {
        _element.classList.toggle(ChipModifier.Selected, value);

        return value;
    }

    public function dispose() {
        component.destroy();
    }
}
