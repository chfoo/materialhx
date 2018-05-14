package materialhx.widget;

import materialhx.css.TopAppBarStyle;
import materialhx.html.TopAppBarBuilder;
import materialhx.mdc.topappbar.MDCTopAppBar;


class TopAppBar extends Widget implements IDisposable {
    public var component(default, null):MDCTopAppBar;
    public var row(default, null):TopAppBarDefaultRow;
    public var style(default, null):StyleModifier<TopAppBarModifier>;

    public function new() {
        super(TopAppBarBuilder.topAppBar());

        style = new StyleModifier(_element);
        row = new TopAppBarDefaultRow();
        push(row);

        component = new MDCTopAppBar(_element);
    }

    public function layout() {
        component.destroy();
        component = new MDCTopAppBar(_element);
    }

    public function dispose() {
        component.destroy();
    }
}
