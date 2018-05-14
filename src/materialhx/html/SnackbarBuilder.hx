package materialhx.html;

import js.html.Element;
import materialhx.css.SnackbarStyle;

using materialhx.html.HTMLTools;


class SnackbarBuilder {
    public static function snackbar():Element {
        var element = HTMLTools.newElement("div", SnackbarStyle.SNACKBAR);

        element.appendNewElement("div", SnackbarStyle.TEXT);

        var wrapper = element.appendNewElement("div",
            SnackbarStyle.ACTION_WRAPPER);
        wrapper.appendNewElement("button", SnackbarStyle.ACTION_BUTTON);

        return element;
    }
}
