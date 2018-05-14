package materialhx.widget;

import materialhx.html.SnackbarBuilder;
import materialhx.mdc.snackbar.MDCSnackbar;


class Snackbar extends Widget implements IDisposable {
    public var component(default, null):MDCSnackbar;

    public function new() {
        super(SnackbarBuilder.snackbar());

        component = new MDCSnackbar(_element);
    }

    public function show(data:SnackbarData) {
        component.show(data);
    }

    public function dispose() {
        component.destroy();
    }
}
