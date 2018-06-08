package materialhx.widget;

import materialhx.html.IconToggleBuilder;
import materialhx.mdc.icontoggle.MDCIconToggle;


@:deprecated
class IconToggle extends Widget implements IDisposable {
    public var component(default, null):MDCIconToggle;

    public function new(icon:IIcon, onConfig:IconToggleConfig,
            offConfig:IconToggleConfig) {
        super(IconToggleBuilder.iconToggleWrapper(
            icon.element.tagName,
            onConfig,
            offConfig
        ));

        _element.appendChild(icon.element);

        component = new MDCIconToggle(_element);
    }

    public function dispose() {
        component.destroy();
    }
}
