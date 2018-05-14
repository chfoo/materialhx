package materialhx.mdc.autoinit;


@:enum
abstract MDCAutoInitEvent(String) to String {
    var End = "MDCAutoInit:End";
}


class MDCAutoInit {
    public static inline function autoInit() {
        untyped js.Browser.window.mdc.autoInit();
    }
}
