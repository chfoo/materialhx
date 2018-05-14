package materialhx.mdc.topappbar;

import materialhx.mdc.base.MDCComponent;


@:enum
abstract MDCTopAppBarEvent(String) to String {
    var Nav = "MDCTopAppBar:nav";
}


@:native("mdc.topAppBar.MDCTopAppBar")
extern class MDCTopAppBar extends MDCComponent {

    static function attachTo(root:js.html.Element):MDCTopAppBar;
}
