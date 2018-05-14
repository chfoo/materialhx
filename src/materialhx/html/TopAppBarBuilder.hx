package materialhx.html;

import js.html.Element;
import materialhx.css.TopAppBarStyle;

using materialhx.html.HTMLTools;


class TopAppBarBuilder {
    public static function topAppBar():Element {
        return HTMLTools.newElement("header", TopAppBarStyle.TOP_APP_BAR);
    }

    public static function row():Element {
        return HTMLTools.newElement("div", TopAppBarStyle.ROW);
    }

    public static function rowSection(end:Bool = false):Element {
        var element = HTMLTools.newElement("section", TopAppBarStyle.SECTION);

        if (end) {
            element.classList.add(TopAppBarSectionModifier.AlignEnd);
        } else {
            element.classList.add(TopAppBarSectionModifier.AlignStart);
        }

        return element;
    }

    public static function upgradeToRowSectionNavIcon(icon:Element) {
        icon.classList.add(TopAppBarStyle.NAVIGATION_ICON);
    }

    public static function rowSectionTitle():Element {
        return HTMLTools.newElement("span", TopAppBarStyle.TITLE);
    }

    public static function upgradeToRowSectionToToolbar(element:Element) {
        element.setAttribute("role", "toolbar");
    }

    public static function upgradeToSectionActionItem(element:Element) {
        element.classList.add(TopAppBarStyle.ACTION_ITEM);
    }
}
