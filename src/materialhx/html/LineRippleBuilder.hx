package materialhx.html;

import js.html.Element;
import materialhx.css.LineRippleStyle;


class LineRippleBuilder {
    public static function lineRipple():Element {
        return HTMLTools.newElement("div", LineRippleStyle.LINE_RIPPLE);
    }
}
