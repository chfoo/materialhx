package materialhx.css;


class ElevationStyle {
    public static inline var TRANSITION = "mdc-elevation-transition";
}


@:enum
abstract ElevationModifier(String) to String {
    private inline function new(value:String) {
        this = value;
    }

    public static inline function elevation(level:Int):ElevationModifier {
        return new ElevationModifier('mdc-elevation--z$level');
    }
}
