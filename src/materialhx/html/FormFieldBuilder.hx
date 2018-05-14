package materialhx.html;

import js.html.Element;
import materialhx.css.FormFieldStyle;


class FormFieldBuilder {
    public static function formField():Element {
        return HTMLTools.newElement("div", FormFieldStyle.FORM_FIELD);
    }
}
