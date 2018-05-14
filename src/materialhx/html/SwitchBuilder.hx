package materialhx.html;

import js.html.Element;
import js.html.InputElement;
import materialhx.css.SwitchStyle;

using materialhx.html.HTMLTools;


class SwitchBuilder {
    public static function switch_():{ root:Element, input:InputElement } {
        var element = HTMLTools.newElement("div", SwitchStyle.SWITCH);

        var input = cast(
            element.appendNewElement("input", SwitchStyle.NATIVE_CONTROL),
            InputElement
        );
        input.type = "checkbox";
        input.id = HTMLTools.randomID();
        input.setAttribute("role", "switch");

        element.appendNewElement("div", SwitchStyle.BACKGROUND)
            .appendNewElement("div", SwitchStyle.KNOB);

        return { root: element, input: input };
    }
}
