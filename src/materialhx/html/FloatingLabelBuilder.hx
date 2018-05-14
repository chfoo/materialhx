package materialhx.html;

import materialhx.css.FloatingLabelStyle;


class FloatingLabelBuilder {
    public static function floatingLabel() {
        return HTMLTools.newElement("label", FloatingLabelStyle.FLOATING_LABEL);
    }
}
