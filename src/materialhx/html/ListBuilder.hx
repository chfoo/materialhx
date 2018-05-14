package materialhx.html;

import js.html.Element;
import materialhx.css.ListStyle;

using materialhx.html.HTMLTools;


typedef ListItemElements = {
    root:Element,
    firstLine:Element,
    secondLine:Element
};


class ListBuilder {
    public static function list():Element {
        return HTMLTools.newElement("ul", ListStyle.LIST);
    }

    public static function listGroup():Element {
        return HTMLTools.newElement("div", ListStyle.LIST_GROUP);
    }

    public static function divider(inset:Bool = false):Element {
        var element;

        if (inset) {
            element = HTMLTools.newElement("li", ListStyle.LIST_DIVIDER);
            element.setAttribute("role", "separator");
        } else {
            element = HTMLTools.newElement("hr", ListStyle.LIST_DIVIDER);
        }

        return element;
    }

    public static function listItem():ListItemElements {
        var element = HTMLTools.newElement("li", ListStyle.LIST_ITEM);

        var textElement = element.appendNewElement("span",
            ListStyle.LIST_ITEM_TEXT);
        var firstLineElement = textElement.appendNewElement("span");
        var secondLineElement = textElement.appendNewElement("span",
            ListStyle.LIST_ITEM_SECONDARY_TEXT);

        return {
            root: element,
            firstLine: firstLineElement,
            secondLine: secondLineElement
        };
    }

    public static function groupSubheader():Element {
        return HTMLTools.newElement("h3", ListStyle.LIST_GROUP_SUBHEADER);
    }

    public static function upgradeToGraphic(element:Element) {
        element.classList.add(ListStyle.LIST_ITEM_GRAPHIC);
    }

    public static function upgradeToMeta(element:Element) {
        element.classList.add(ListStyle.LIST_ITEM_META);
    }
}
