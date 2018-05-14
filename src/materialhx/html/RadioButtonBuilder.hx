package materialhx.html;

import js.html.Element;
import js.html.InputElement;
import materialhx.css.RadioStyle;

using materialhx.html.HTMLTools;


class RadioButtonBuilder {
    public static function radio():{ root:Element, input:InputElement } {
        var element = HTMLTools.newElement("div", RadioStyle.RADIO);

        var input = cast(
            element.appendNewElement("input", RadioStyle.NATIVE_CONTROL),
            InputElement
        );
        input.type = "radio";
        input.id = HTMLTools.randomID();

        var background = element.appendNewElement("div", RadioStyle.BACKGROUND);
        background.appendNewElement("div", RadioStyle.OUTER_CIRCLE);
        background.appendNewElement("div", RadioStyle.INNER_CIRCLE);

        return { root: element, input: input };
    }
}
