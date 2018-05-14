package materialhx.widget;

import materialhx.html.TextFieldBuilder;
import materialhx.mdc.textfield.MDCTextFieldIcon;


class TextFieldIcon extends Widget {
    public var icon(default, null):IIcon;
    public var component(default, null):MDCTextFieldIcon;

    public function new(icon:IIcon) {
        super(icon.element);
        this.icon = icon;

        TextFieldBuilder.upgradeToIcon(icon.element);
        component = new MDCTextFieldIcon(icon.element);
    }
}
