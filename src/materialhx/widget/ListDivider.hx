package materialhx.widget;

import materialhx.html.ListBuilder;


class ListDivider extends Widget {
    public function new(inset:Bool = false) {
        super(ListBuilder.divider(inset));
    }
}
