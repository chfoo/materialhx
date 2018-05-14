package materialhx.widget;

import js.Browser;
import js.html.Element;


/**
    Empty widget.

    This widget is intended for quickly creating structural widgets.
**/
class ContainerWidget extends Widget {
    public function new(?element:Element, ?tagName:String) {
        if (element == null) {
            tagName = tagName != null ? tagName : "div";
            element = Browser.document.createElement(tagName);
        }

        super(element);
    }
}
