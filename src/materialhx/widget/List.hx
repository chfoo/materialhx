package materialhx.widget;

import materialhx.css.ListStyle;
import materialhx.html.ListBuilder;


class List extends Widget {
    public var style(default, null):StyleModifier<ListModifier>;

    public function new() {
        super(ListBuilder.list());

        style = new StyleModifier(_element);
    }
}
