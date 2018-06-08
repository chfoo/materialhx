package materialhx.html;

import js.html.Element;
import materialhx.css.IconButtonStyle;


typedef IconButtonConfig = {
    label:String,
    ?content:String,
    ?cssClass:String
};


class IconButtonBuilder {
    public static function iconButton():Element {
        var element = HTMLTools.newElement(
            "button", IconButtonStyle.ICON_BUTTON);
        return element;
    }

    public static function upgradeToToggle(
            element:Element, iconSelector:String, onConfig:IconButtonConfig,
            offConfig:IconButtonConfig) {
        element.setAttribute("data-icon-inner-selector", iconSelector);
        element.setAttribute("data-toggle-on-label", onConfig.label);
        element.setAttribute("data-toggle-off-label", offConfig.label);

        if (onConfig.content != null) {
            element.setAttribute("data-toggle-on-content", onConfig.content);
        }

        if (offConfig.content != null) {
            element.setAttribute("data-toggle-off-content", offConfig.content);
        }

        if (onConfig.cssClass != null) {
            element.setAttribute("data-toggle-on-class", onConfig.cssClass);
        }

        if (offConfig.cssClass != null) {
            element.setAttribute("data-toggle-off-class", offConfig.cssClass);
        }
    }
}
