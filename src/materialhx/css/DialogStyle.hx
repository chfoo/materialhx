package materialhx.css;


class DialogStyle {
    public static inline var DIALOG = "mdc-dialog";
    public static inline var SURFACE = "mdc-dialog__surface";
    public static inline var HEADER = "mdc-dialog__header";
    public static inline var HEADER_TITLE = "mdc-dialog__header__title";
    public static inline var BODY = "mdc-dialog__body";
    public static inline var FOOTER = "mdc-dialog__footer";
    public static inline var FOOTER_BUTTON = "mdc-dialog__footer__button";
    public static inline var BACKDROP = "mdc-dialog__backdrop";
}


@:enum
abstract DialogBodyModifier(String) to String {
    var Scrollable = "mdc-dialog__body--scrollable";
}


@:enum
abstract DialogFooterButtonModifier(String) to String {
    var Cancel = "mdc-dialog__footer__button--cancel";
    var Accept = "mdc-dialog__footer__button--accept";
}
