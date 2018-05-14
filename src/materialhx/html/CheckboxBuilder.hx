package materialhx.html;

import js.html.Element;
import js.html.InputElement;
import materialhx.css.CheckboxStyle;

using materialhx.html.HTMLTools;


class CheckboxBuilder {
    public static inline var CHECKMARK_SVG = '
<svg class="mdc-checkbox__checkmark"
        viewBox="0 0 24 24">
    <path class="mdc-checkbox__checkmark-path"
            fill="none"
            stroke="white"
            d="M1.73,12.91 8.1,19.28 22.79,4.59"/>
</svg>
';

    public static function checkbox():{ root:Element, input:InputElement } {
        var element = HTMLTools.newElement("div", CheckboxStyle.CHECKBOX);

        var input = cast(
            element.appendNewElement("input", CheckboxStyle.NATIVE_CONTROL),
            InputElement
        );
        input.type = "checkbox";
        input.id = HTMLTools.randomID();

        var background = element.appendNewElement("div",
            CheckboxStyle.BACKGROUND);
        background.appendHTML(CHECKMARK_SVG);
        background.appendNewElement("div", CheckboxStyle.MIXEDMARK);

        return { root: element, input: input };
    }
}
