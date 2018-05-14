package materialhx.html;

import js.html.Element;
import js.html.InputElement;
import js.html.TextAreaElement;
import materialhx.css.TextFieldIconStyle;
import materialhx.css.TextFieldStyle;

using materialhx.html.HTMLTools;


class TextFieldBuilder {
    public static function textField():{ root:Element, input:InputElement } {
        var element = HTMLTools.newElement("div", TextFieldStyle.TEXT_FIELD);

        var input = cast(
            element.appendNewElement("input", TextFieldStyle.INPUT),
            InputElement
        );
        input.id = HTMLTools.randomID();

        return { root: element, input: input };
    }

    public static function textFieldTextArea():
            { root:Element, textArea:TextAreaElement} {
        var element = HTMLTools.newElement("div", TextFieldStyle.TEXT_FIELD);
        element.classList.add(TextFieldModifier.Textarea);

        var textarea = cast(
            element.appendNewElement("textarea", TextFieldStyle.INPUT),
            TextAreaElement
        );
        textarea.id = HTMLTools.randomID();

        return { root: element, textArea: textarea };
    }

    public static function upgradeToIcon(element:Element) {
        element.classList.add(TextFieldIconStyle.ICON);
    }
}
