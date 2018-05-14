package materialhx.widget;

import js.Browser;
import js.html.OptionElement;
import js.html.SelectElement;
import materialhx.css.FloatingLabelStyle.FloatingLabelModifier;
import materialhx.html.SelectMenuBuilder;
import materialhx.mdc.select.MDCSelect;


class SelectMenu extends Widget implements IDisposable {
    public var value(get, never):String;
    public var selectedIndex(get, set):Int;
    public var disabled(get, set):Bool;
    public var selectElement(default, null):SelectElement;
    public var component(default, null):MDCSelect;
    public var label(get, set):String;
    public var options(default, null):ContainerWidget;

    var labelWidget:FloatingLabel;

    public function new(label:String = "", isPreselected:Bool = false) {
        var elements = SelectMenuBuilder.select();
        selectElement = elements.select;
        options = new ContainerWidget(selectElement);

        super(elements.root);

        labelWidget = new FloatingLabel(label);
        push(labelWidget);
        push(new LineRipple());

        component = new MDCSelect(_element);

        if (isPreselected) {
            labelWidget.style.add(FloatingLabelModifier.FloatAbove);
        }
    }

    function get_value():String {
        return component.value;
    }

    function set_value(value:String):String {
        return component.value = value;
    }

    function get_selectedIndex():Int {
        return component.selectedIndex;
    }

    function set_selectedIndex(value:Int):Int {
        return component.selectedIndex = value;
    }

    function get_disabled():Bool {
        return component.disabled;
    }

    function set_disabled(value:Bool):Bool {
        return component.disabled = value;
    }

    function get_label():String {
        return labelWidget.text;
    }

    function set_label(value:String):String {
        return labelWidget.text = value;
    }

    public function dispose() {
        component.destroy();
    }
}
