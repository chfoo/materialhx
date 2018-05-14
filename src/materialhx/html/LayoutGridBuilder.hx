package materialhx.html;

import js.html.Element;
import materialhx.css.LayoutGridStyle;


class LayoutGridBuilder {
    public static function layoutGrid():Element {
        return HTMLTools.newElement("div", LayoutGridStyle.LAYOUT_GRID);
    }

    public static function inner():Element {
        return HTMLTools.newElement("div", LayoutGridStyle.INNER);
    }

    public static function cell():Element {
        return HTMLTools.newElement("div", LayoutGridStyle.CELL);
    }
}
