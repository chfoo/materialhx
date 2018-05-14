package materialhx.html;

import js.html.Element;
import materialhx.css.ButtonStyle;


class ButtonBuilder {
    public static function button():Element {
        return HTMLTools.newElement("button", ButtonStyle.BUTTON);
    }

    public static function upgradeIcon(iconElement:Element,
            standalone:Bool = false) {

        iconElement.classList.add(ButtonStyle.ICON);

        if (!standalone) {
            iconElement.setAttribute("aria-hidden", "true");
        }
    }
}
