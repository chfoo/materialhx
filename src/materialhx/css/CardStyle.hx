package materialhx.css;


class CardStyle {
    public static inline var CARD = "mdc-card";
    public static inline var PRIMARY_ACTION = "mdc-card__primary-action";
    public static inline var MEDIA = "mdc-card__media";
    public static inline var MEDIA_CONTENT = "mdc-card__media-content";
    public static inline var ACTIONS = "mdc-card__actions";
    public static inline var ACTION = "mdc-card__action";
    public static inline var ACTION_BUTTONS = "mdc-card__action-buttons";
    public static inline var ACTION_ICONS = "mdc-card__action-icons";
}


@:enum
abstract CardModifier(String) to String {
    var Outlined = "mdc-card--outlined";
}


@:enum
abstract CardMediaModifier(String) to String {
    var Square = "mdc-card__media--square";
    var Ratio16x9 = "mdc-card__media--16-9";
}


@:enum
abstract CardActionsModifier(String) to String {
    var FullBleed = "mdc-card__actions--full-bleed";
}


@:enum
abstract CardActionModifier(String) to String {
    var Button = "mdc-card__action--button";
    var Icon = "mdc-card__action--icon";
}
