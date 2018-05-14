package materialhx.widget;

import js.html.Element;
import materialhx.html.TabsBuilder;


class Tab extends Widget {
    var _textElement:Element;

    public function new(text:String = "", ?icon:IIcon) {
        var elements = TabsBuilder.tab(
            text,
            icon != null ? icon.element : null
        );

        _textElement = elements.text;

        super(elements.root);
    }
}
