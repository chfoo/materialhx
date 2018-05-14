package materialhx.widget;

import materialhx.css.LayoutGridStyle;
import materialhx.html.LayoutGridBuilder;


class LayoutGridCell extends Widget {
    public var style(default, null):StyleModifier<LayoutGridCellModifier>;

    public function new() {
        super(LayoutGridBuilder.cell());

        style = new StyleModifier(_element);
    }
}
