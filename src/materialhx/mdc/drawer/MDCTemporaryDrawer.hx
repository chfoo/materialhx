package materialhx.mdc.drawer;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCTemporaryDrawerEvent(String) to String {
    var Open = "MDCTemporaryDrawer:open";
    var Close = "MDCTemporaryDrawer:close";
}


@:native("mdc.drawer.MDCTemporaryDrawer")
extern class MDCTemporaryDrawer extends MDCComponent {
    var open:Bool;

    static function attachTo(root:js.html.Element):MDCTemporaryDrawer;
}
