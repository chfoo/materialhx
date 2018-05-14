package materialhx.widget;

import materialhx.css.ChipStyle;
import materialhx.html.ChipBuilder;
import materialhx.mdc.chips.MDCChipSet;


class ChipSet extends Widget implements IDisposable {
    public var style(default, null):StyleModifier<ChipSetModifier>;
    public var component(default, null):MDCChipSet;

    public function new() {
        super(ChipBuilder.chipSet());

        component = new MDCChipSet(_element);
        style = new StyleModifier(_element);
    }

    public function dispose() {
        component.destroy();
    }
}
