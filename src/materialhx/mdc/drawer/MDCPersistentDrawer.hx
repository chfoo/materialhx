package materialhx.mdc.drawer;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCPersistentDrawerEvent(String) to String {
    var Open = "MDCPersistentDrawer:open";
    var Close = "MDCPersistentDrawer:close";
}


@:native("mdc.drawer.MDCPersistentDrawer")
extern class MDCPersistentDrawer extends MDCComponent {
    var open:Bool;

    static function attachTo(root:js.html.Element):MDCPersistentDrawer;
}
