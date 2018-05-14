package materialhx.html;

import js.html.Element;
import materialhx.css.DialogStyle;

using materialhx.html.HTMLTools;


class DialogBuilder {
    public static function dialog():
            { root:Element, surface:Element, backdrop:Element } {
        var element = HTMLTools.newElement("aside", DialogStyle.DIALOG);
        element.setAttribute("role", "alertdialog");

        var surface = element.appendNewElement("div", DialogStyle.SURFACE);
        var backdrop = element.appendNewElement("div", DialogStyle.BACKDROP);

        return { root: element, surface: surface, backdrop: backdrop };
    }

    public static function header():Element {
        return HTMLTools.newElement("header", DialogStyle.HEADER);
    }

    public static function headerTitle(dialog:Element, text:String = ""):
            Element {
        var element = HTMLTools.newElement("h2", DialogStyle.HEADER_TITLE);
        element.id = HTMLTools.randomID();
        element.textContent = text;

        dialog.setAttribute("aria-labelledby", element.id);

        return element;
    }

    public static function body(dialog:Element):Element {
        var element = HTMLTools.newElement("section", DialogStyle.BODY);
        element.id = HTMLTools.randomID();

        dialog.setAttribute("aria-describedby", element.id);

        return element;
    }

    public static function footer():Element {
        return HTMLTools.newElement("footer", DialogStyle.FOOTER);
    }

    public static function upgradeTofooterButton(button:Element,
            isAccept:Bool = false) {

        button.classList.add(DialogStyle.FOOTER_BUTTON);

        if (isAccept) {
            button.classList.add(DialogFooterButtonModifier.Accept);
        } else {
            button.classList.add(DialogFooterButtonModifier.Cancel);
        }
    }
}
