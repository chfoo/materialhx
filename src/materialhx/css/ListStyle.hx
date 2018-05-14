package materialhx.css;


class ListStyle {
    public static inline var LIST = "mdc-list";
    public static inline var LIST_ITEM = "mdc-list-item";
    public static inline var LIST_ITEM_TEXT = "mdc-list-item__text";
    public static inline var LIST_ITEM_SECONDARY_TEXT = "mdc-list-item__secondary-text";
    public static inline var LIST_ITEM_GRAPHIC = "mdc-list-item__graphic";
    public static inline var LIST_ITEM_META = "mdc-list-item__meta";
    public static inline var LIST_GROUP = "mdc-list-group";
    public static inline var LIST_GROUP_SUBHEADER = "mdc-list-group__subheader";
    public static inline var LIST_DIVIDER = "mdc-list-divider";
}


@:enum
abstract ListModifier(String) to String {
    var NonInteractive = "mdc-list--non-interactive";
    var Dense = "mdc-list--dense";
    var AvatarList = "mdc-list--avatar-list";
    var TwoLine = "mdc-list--two-line";
}


@:enum
abstract ListItemModifier(String) to String {
    var Selected = "mdc-list-item--selected";
    var Activated = "mdc-list-item--activated";
}


@:enum
abstract ListDividerModifier(String) to String {
    var Passed = "mdc-list-divider--padded";
    var Inset = "mdc-list-divider--inset";
}
