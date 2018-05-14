package materialhx.widget;

import js.Browser;
import materialhx.css.TopAppBarStyle;


class TopAppBarAdjust extends Widget {
    public var style(default, null):StyleModifier<TopAppBarAdjustModifier>;

    public function new() {
        super(Browser.document.createElement("div"));

        style = new StyleModifier(_element, true);
        style.add(TopAppBarAdjustModifier.Fixed);
    }
}
