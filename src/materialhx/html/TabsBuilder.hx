package materialhx.html;

import js.html.Element;
import materialhx.css.TabsStyle;

using materialhx.html.HTMLTools;


class TabsBuilder {
    public static function tabBar(text:Bool, icon:Bool):Element {
        var element = HTMLTools.newElement("nav", TabsStyle.TAB_BAR);
        element.appendNewElement("span", TabsStyle.TAB_BAR_INDICATOR);

        if (!text && icon) {
            element.classList.add(TabBarModifier.IconTabBar);
        } else if (text && icon) {
            element.classList.add(TabBarModifier.IconsWithText);
        }

        return element;
    }

    public static function tab(text:String = "", ?icon:Element)
            :{ root:Element, text:Element } {
        var element = HTMLTools.newElement("a", TabsStyle.TAB);

        if (icon != null) {
            element.appendChild(icon);
            icon.classList.add(TabsStyle.TAB_ICON);
        }

        var textElement = element.appendNewElement("span",
            TabsStyle.TAB_ICON_TEXT);
        textElement.textContent = text;

        return { root: element, text: textElement };
    }

    public static function tabBarScroller():Element {
        return HTMLTools.newElement("div", TabsStyle.SCROLLER);
    }

    public static function tabScrollerBack(icon:Element):Element {
        var element = HTMLTools.newElement("div",
            TabsStyle.SCROLLER_INDICATOR);

        element.classList.add(TabBarScrollerIndicatorModifier.Back);
        element.appendChild(icon);
        icon.classList.add(TabsStyle.SCROLLER_INDICATOR_INNER);

        return element;
    }

    public static function tabScrollerTabBar(tabBar:Element):Element {
        var element = HTMLTools.newElement("div",
            TabsStyle.SCROLLER_INDICATOR_SCROLL_FRAME);

        element.appendChild(tabBar);
        tabBar.classList.add(TabsStyle.SCROLLER_INDICATOR_SCROLL_FRAME_TABS);

        return element;
    }

    public static function tabScrollerForward(icon:Element):Element {
        var element = HTMLTools.newElement("div",
            TabsStyle.SCROLLER_INDICATOR);

        element.classList.add(TabBarScrollerIndicatorModifier.Forward);
        element.appendChild(icon);
        icon.classList.add(TabsStyle.SCROLLER_INDICATOR_INNER);

        return element;
    }
}
