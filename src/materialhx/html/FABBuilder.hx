package materialhx.html;

import js.html.Element;
import materialhx.css.FABStyle;


class FABBuilder {
    public static function fab(mini:Bool = false):Element {
        return HTMLTools.newElement("button", FABStyle.FAB);
    }

    public static function upgradeToFABIcon(icon:Element) {
        icon.classList.add(FABStyle.ICON);
    }
}
