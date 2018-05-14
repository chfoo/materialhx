package materialhx.widget;

import js.html.Element;


/**
    Wrapper for adding and removing CSS class names for an element.

    This class is intended to be used with an abstract string enum.
**/
class StyleModifier<T:String> {
    var element:Element;
    var single:Bool;
    var previous:T;

    /**
        @param element The element where class names will be changed.
        @param element Whether class names will be overwritten such that
            only one class name may be used at a time.
    **/
    public function new(element:Element, single:Bool = false) {
        this.element = element;
        this.single = single;
    }

    /**
        Add a class name.

        If `single` was specified, the previous class name applied will be
        removed.
    **/
    public function add(modifier:T) {
        if (single) {
            if (previous != null) {
                remove(previous);
            }
            previous = modifier;
        }

        element.classList.add(modifier);
    }

    /**
        Remove a class name.
    **/
    public function remove(modifier:T) {
        element.classList.remove(modifier);
    }

    /**
        Returns whether a class name exists.
    **/
    public function exists(modifier:T) {
        element.classList.contains(modifier);
    }
}
