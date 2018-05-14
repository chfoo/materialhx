package materialhx.html;

import haxe.Json;
import js.html.Element;
import materialhx.css.IconToggleStyle;


typedef IconToggleConfig = {
    label:String,
    ?content:String,
    ?cssClass:String
};


class IconToggleBuilder {
    public static function iconToggleWrapper(innerSelector:String,
            onConfig:IconToggleConfig, offConfig:IconToggleConfig):Element {
        var element = HTMLTools.newElement("span", IconToggleStyle.ICON_TOGGLE);
        element.tabIndex = 0;
        element.setAttribute("role", "button");
        element.setAttribute("aria-pressed", "false");
        element.setAttribute("data-icon-inner-selector", innerSelector);
        element.setAttribute("data-toggle-on", Json.stringify(onConfig));
        element.setAttribute("data-toggle-off", Json.stringify(offConfig));

        return element;
    }

    public static function upgradeToIconToggleInner(element:Element) {
        element.setAttribute("aria-hidden", "true");
    }
}
