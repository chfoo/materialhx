package materialhx.html;

import js.html.Element;
import materialhx.css.DrawerStyle;

using materialhx.html.HTMLTools;


class DrawerBuilder {
    public static function drawer():Element {
        return HTMLTools.newElement("nav", DrawerStyle.DRAWER);
    }

    public static function permanentDrawer():Element {
        var element = HTMLTools.newElement("nav", DrawerStyle.DRAWER);
        element.classList.add(DrawerModifier.Permanent);

        return element;
    }

    public static function persistentDrawer():
                { root:Element, container:Element } {
        var element = HTMLTools.newElement("aside", DrawerStyle.DRAWER);
        element.classList.add(DrawerModifier.Persistent);

        var subElement = element.appendNewElement("nav",
            DrawerStyle.DRAWER_DRAWER);

        return { root: element, container: subElement };
    }

    public static function temporaryDrawer():
                { root:Element, container:Element } {
        var element = HTMLTools.newElement("aside", DrawerStyle.DRAWER);
        element.classList.add(DrawerModifier.Temporary);

        var subElement = element.appendNewElement("nav",
            DrawerStyle.DRAWER_DRAWER);

        return { root: element, container: subElement };
    }

    public static function toolbarSpacer():Element {
        return HTMLTools.newElement("div", DrawerStyle.TOOLBAR_SPACER);
    }

    public static function header():{ root:Element, content:Element } {
        var element = HTMLTools.newElement("header", DrawerStyle.HEADER);
        var contentElement = element.appendNewElement("div",
            DrawerStyle.HEADER_CONTENT);

        return { root: element, content: contentElement };
    }

    public static function upgradeToContent(list:Element) {
        list.classList.add(DrawerStyle.CONTENT);
    }
}
