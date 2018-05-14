package materialhx.html;

import js.Browser;
import js.html.Element;


class HTMLTools {
    public static function randomID():String {
        var buf = new StringBuf();
        for (i in 0...16) {
            buf.add(StringTools.hex(Std.random(0x100), 2));
        }
        return buf.toString();
    }

    public static function newElement(tagName:String, ?className:String)
            :Element {
        var element = Browser.document.createElement(tagName);

        if (className != null) {
            element.className = className;
        }

        return element;
    }

    public static function appendNewElement(element:Element, tagName:String,
            ?className:String):Element {
        var childElement = newElement(tagName, className);
        element.appendChild(childElement);

        return childElement;
    }

    public static function appendHTML(element:Element, html:String) {
        var range = Browser.document.createRange();
        var fragment = range.createContextualFragment(html);
        element.appendChild(fragment);
    }
}
