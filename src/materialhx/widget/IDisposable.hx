package materialhx.widget;


/**
    Class requiring manual clean up.
**/
interface IDisposable {
    /**
        Clean up any resources, callbacks, etc.

        The class may not be usable anymore.
    **/
    function dispose():Void;
}
