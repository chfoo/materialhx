package materialhx.html;

import js.html.Element;
import js.html.SelectElement;
import materialhx.css.SelectStyle;

using materialhx.html.HTMLTools;


class SelectMenuBuilder {
    public static function select():{ root:Element, select:SelectElement } {
        var element = HTMLTools.newElement("div", SelectStyle.SELECT);

        var selectElement = cast(
            element.appendNewElement("select", SelectStyle.NATIVE_CONTROL),
            SelectElement
        );

        return { root: element, select: selectElement };
    }
}
