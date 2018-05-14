package materialhx.html;

import js.html.Element;
import materialhx.css.MenuStyle;


class MenuBuilder {
    public static function menu():Element {
        var element = HTMLTools.newElement("div", MenuStyle.MENU);
        element.tabIndex = -1;

        return element;
    }

    public static function upgradeList(list:Element) {
        list.classList.add(MenuStyle.ITEMS);
        list.setAttribute("role", "menu");
        list.setAttribute("aria-hidden", "true");
    }

    public static function upgradeListItem(item:Element) {
        item.setAttribute("role", "menuitem");
        item.tabIndex = 0;
    }
}
